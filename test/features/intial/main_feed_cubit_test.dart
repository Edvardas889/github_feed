import 'package:bloc_test/bloc_test.dart';
import 'package:either_dart/either.dart';
import 'package:github_feed/features/initial/bloc/main_feed_cubit.dart';
import 'package:github_feed/features/initial/models/main_feed_model.dart';
import 'package:github_feed/features/initial/repositories/main_feed_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockMainFeedRepository extends Mock implements MainFeedRepository {}

void main() {
  late _MockMainFeedRepository mockMainFeedRepository;

  group("MainFeedCubit", () {
    late MainFeedCubit mainFeedCubit;

    setUp(() {
      mockMainFeedRepository = _MockMainFeedRepository();

      mainFeedCubit = MainFeedCubit(mockMainFeedRepository);
    });

    tearDown(() {
      mainFeedCubit.close();
    });

    blocTest(
      "loads main feed urls",
      build: () {
        when(() => mockMainFeedRepository.get())
            .thenAnswer((_) async => Right(MainFeedModel(
                  timelineUrl: "timelineUrl",
                  userUrl: "userUrl",
                )));
        return mainFeedCubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        MainFeedState.loading(),
        MainFeedState.loaded(["timelineUrl", "userUrl"]),
      ],
    );

    blocTest(
      "returns error when fetch failed",
      build: () {
        when(() => mockMainFeedRepository.get())
            .thenAnswer((_) async => Left(false));
        return mainFeedCubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        MainFeedState.loading(),
        MainFeedState.error(),
      ],
    );
  });
}
