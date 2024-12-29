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
      final feedResult = await mainFeedRepository.get();
      if (feedResult.isRight) {
        return emit(MainFeedState.loaded());
      }
      return emit(MainFeedState.error());
    } catch (e) {
      //LOG ERROR
      emit(const MainFeedState.error());
    }
  }
}
