import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_feed/features/feed_details/repositories/feed_details_repository.dart';
import 'package:webfeed_plus/webfeed_plus.dart';

part 'feed_details_state.dart';

part 'feed_details_cubit.freezed.dart';

class FeedDetailsCubit extends Cubit<FeedDetailsState> {
  final FeedDetailsRepository feedDetailsRepository;
  final _urlParamsRegex = RegExp(r'\{(\w+)\}');
  Timer? _autoFetchTimer;

  FeedDetailsCubit(
    this.feedDetailsRepository,
  ) : super(const FeedDetailsState.initial());

  void load(String url) async {
    try {
      final autoFetchEnabled = _autoFetchTimer != null;

      if (!autoFetchEnabled) {
        emit(const FeedDetailsState.loading());
        final matches = _urlParamsRegex.allMatches(url);
        final params = matches.map((match) => match.group(1)).toList();
        if (params.isNotEmpty) {
          return emit(FeedDetailsState.paramsNeeded(params));
        }
        //to show loader
        await Future.delayed(Duration(seconds: 1));
      }

      final feedResult = await feedDetailsRepository.getAtom(url);
      if (feedResult.isRight) {
        final atomFeed = AtomFeed.parse(feedResult.right);
        if (_autoFetchTimer == null) {
          startAutoFetch(url);
        }
        if (atomFeed.items?.isNotEmpty == true) {
          return emit(FeedDetailsState.loaded(atomFeed));
        } else {
          return emit(FeedDetailsState.empty());
        }
      }
      return emit(FeedDetailsState.error(errorMsg: feedResult.left));
    } catch (e) {
      //LOG ERROR
      emit(const FeedDetailsState.error());
    }
  }

  void formUrlAndLoad(String originalUrl, Map<String, String> paramValuesMap) {
    String urlToLoad = originalUrl;
    for (var k in paramValuesMap.keys) {
      urlToLoad = urlToLoad.replaceAll('{$k}', paramValuesMap[k] ?? '');
    }
    load(urlToLoad);
  }

  void startAutoFetch(String url) {
    _autoFetchTimer = Timer.periodic(
      const Duration(minutes: 1),
      (_) => load(url),
    );
  }

  void stopAutoFetch() {
    _autoFetchTimer?.cancel();
    _autoFetchTimer = null;
  }

  @override
  Future<void> close() {
    stopAutoFetch();
    return super.close();
  }
}
