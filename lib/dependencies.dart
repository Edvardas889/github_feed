import 'package:get/get.dart';
import 'package:github_feed/features/initial/repositories/main_feed_repository.dart';

import 'core/router/app_router.dart';

class Dependencies {
  Dependencies._();

  static Future<void> initializeServices() async {
    final appRouter = AppRouter();
    Get.put<AppRouter>(appRouter);

    final mainFeedRepository = MainFeedRepository();
    Get.put<MainFeedRepository>(mainFeedRepository);
  }
}
