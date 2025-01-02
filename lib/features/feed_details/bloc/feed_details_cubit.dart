import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_feed/features/feed_details/repositories/feed_details_repository.dart';
import 'package:webfeed_plus/webfeed_plus.dart';

part 'feed_details_state.dart';

part 'feed_details_cubit.freezed.dart';

class FeedDetailsCubit extends Cubit<FeedDetailsState> {
  final FeedDetailsRepository feedDetailsRepository;
  Timer? _autoFetchTimer;

  FeedDetailsCubit(
    this.feedDetailsRepository,
  ) : super(const FeedDetailsState.initial());

  void load(String url) async {
    try {
      final autoFetchEnabled = _autoFetchTimer != null;

      if (!autoFetchEnabled) {
        emit(const FeedDetailsState.loading());
        //to show loader
        await Future.delayed(Duration(seconds: 1));
      }

      final feedResult = await feedDetailsRepository.getAtom(url);
      if (feedResult.isRight) {
        final atomFeed = AtomFeed.parse(feedResult.right);
        if (_autoFetchTimer == null) {
          startAutoFetch(url);
        }
        return emit(FeedDetailsState.loaded(atomFeed));
      }
      return emit(FeedDetailsState.error());
    } catch (e) {
      //LOG ERROR
      emit(const FeedDetailsState.error());
    }
  }

  void startAutoFetch(String url) {
    _autoFetchTimer = Timer.periodic(
      const Duration(seconds: 10),
      (_) {
        print("FETCHING");
        load(url);
      },
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
