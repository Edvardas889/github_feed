part of 'feed_details_cubit.dart';

@freezed
class FeedDetailsState with _$FeedDetailsState {
  const factory FeedDetailsState.initial() = _Initial;

  const factory FeedDetailsState.loading() = _Loading;

  const factory FeedDetailsState.empty() = _Empty;

  const factory FeedDetailsState.loaded(
    AtomFeed atomFeed,
  ) = LoadedFeedDetailsState;

  const factory FeedDetailsState.paramsNeeded(
    List<String?> paramsList,
  ) = _ParamsNeeded;

  const factory FeedDetailsState.error() = _Error;
}
