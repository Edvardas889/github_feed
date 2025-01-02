import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_feed/features/feed_details/repositories/feed_details_repository.dart';
import 'package:webfeed_plus/webfeed_plus.dart';

part 'feed_details_state.dart';

part 'feed_details_cubit.freezed.dart';

class FeedDetailsCubit extends Cubit<FeedDetailsState> {
  final FeedDetailsRepository feedDetailsRepository;

  FeedDetailsCubit(
    this.feedDetailsRepository,
  ) : super(const FeedDetailsState.initial());

  void load(String url) async {
    try {
      emit(const FeedDetailsState.loading());
      //to show loader
      await Future.delayed(Duration(seconds: 1));
      final feedResult = await feedDetailsRepository.getAtom(url);
      if (feedResult.isRight) {
        final atomFeed = AtomFeed.parse(feedResult.right);
        return emit(FeedDetailsState.loaded(atomFeed));
      }
      return emit(FeedDetailsState.error());
    } catch (e) {
      //LOG ERROR
      emit(const FeedDetailsState.error());
    }
  }
}
