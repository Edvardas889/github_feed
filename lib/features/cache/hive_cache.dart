import 'package:hive_flutter/hive_flutter.dart';

class HiveCache {
  static final _dir = "CacheRepo";

  static Future<void> initialize() async {
    try {
      await Hive.initFlutter(_dir);
    } catch (e, s) {
      //LOG ERROR
    }
  }

  static Future<void> clearCache() async {
    try {
      await Hive.deleteFromDisk();
    } catch (e, s) {
      //LOG ERROR
    }
  }
}
