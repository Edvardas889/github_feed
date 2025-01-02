import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_feed/features/initial/repositories/main_feed_repository.dart';

part 'main_feed_state.dart';

part 'main_feed_cubit.freezed.dart';

class MainFeedCubit extends Cubit<MainFeedState> {
  final MainFeedRepository mainFeedRepository;

  MainFeedCubit(
    this.mainFeedRepository,
  ) : super(const MainFeedState.initial());

  void load() async {
    try {
      emit(const MainFeedState.loading());
      //to show loader
      await Future.delayed(Duration(seconds: 1));
      final feedResult = await mainFeedRepository.get();
      if (feedResult.isRight) {
        final List<String> result = [];
        if (feedResult.right.timelineUrl?.isNotEmpty == true) {
          result.add(feedResult.right.timelineUrl!);
        }
        if (feedResult.right.userUrl?.isNotEmpty == true) {
          result.add(feedResult.right.userUrl!);
        }
        if (feedResult.right.repositoryDiscussionsUrl?.isNotEmpty == true) {
          result.add(feedResult.right.repositoryDiscussionsUrl!);
        }
        if (feedResult.right.repositoryDiscussionsCategoryUrl?.isNotEmpty ==
            true) {
          result.add(feedResult.right.repositoryDiscussionsCategoryUrl!);
        }
        if (feedResult.right.securityAdvisoriesUrl?.isNotEmpty == true) {
          result.add(feedResult.right.securityAdvisoriesUrl!);
        }

        return emit(MainFeedState.loaded(result));
      }
      return emit(MainFeedState.error());
    } catch (e) {
      //LOG ERROR
      emit(const MainFeedState.error());
    }
  }
}
