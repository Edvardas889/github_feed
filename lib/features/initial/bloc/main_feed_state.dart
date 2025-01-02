part of 'main_feed_cubit.dart';

@freezed
class MainFeedState with _$MainFeedState {
  const factory MainFeedState.initial() = _Initial;

  const factory MainFeedState.loading() = _Loading;

  const factory MainFeedState.loaded(
    List<String> mainFeedUrls,
  ) = _Loaded;

  const factory MainFeedState.error() = _Error;
}
