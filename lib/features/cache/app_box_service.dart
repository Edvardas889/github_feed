import 'package:github_feed/features/cache/app_box.dart';
import 'package:github_feed/features/cache/hive_cache.dart';
import 'package:github_feed/features/initial/models/main_feed_model.dart';

class AppBoxService {
  final AppBox<MainFeedModel> mainFeedModelBox;

  AppBoxService({
    required this.mainFeedModelBox,
  });

  Future onResume() async {
    await mainFeedModelBox.deleteAll();
  }

  Future clearAll() async {
    await mainFeedModelBox.deleteAll();
    await HiveCache.clearCache();
  }
}
