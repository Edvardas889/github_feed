import 'package:get/get.dart';
import 'package:github_feed/features/cache/app_box.dart';
import 'package:github_feed/features/cache/app_box_service.dart';
import 'package:github_feed/features/cache/hive_cache.dart';
import 'package:github_feed/features/feed_details/repositories/feed_details_repository.dart';
import 'package:github_feed/features/feed_details/utils/date_formatter.dart';
import 'package:github_feed/features/initial/models/main_feed_model.dart';
import 'package:github_feed/features/initial/repositories/main_feed_repository.dart';

import 'core/router/app_router.dart';

class Dependencies {
  Dependencies._();

  static Future<void> initializeServices() async {
    final appRouter = AppRouter();
    Get.put<AppRouter>(appRouter);

    Get.put<AppBox<MainFeedModel>>(
      AppBox<MainFeedModel>(
        fromJson: (v) => MainFeedModel.fromJson(v),
      ),
    );

    final appBoxService = AppBoxService(
      mainFeedModelBox: Get.find<AppBox<MainFeedModel>>(),
    );
    Get.put<AppBoxService>(appBoxService);

    await HiveCache.initialize();

    final mainFeedRepository = MainFeedRepository(
      mainFeedModelBox: Get.find<AppBox<MainFeedModel>>(),
    );
    Get.put<MainFeedRepository>(mainFeedRepository);

    final feedDetailsRepository = FeedDetailsRepository();
    Get.put<FeedDetailsRepository>(feedDetailsRepository);

    Get.put<DateFormatter>(DateFormatter());
  }
}
