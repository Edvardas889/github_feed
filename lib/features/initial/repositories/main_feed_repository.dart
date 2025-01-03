import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:github_feed/core/constants/app_shared_preferences.dart';
import 'package:github_feed/features/cache/app_box.dart';
import 'package:github_feed/features/initial/models/main_feed_model.dart';
import 'package:http/http.dart' as http;

class MainFeedRepository {
  final AppBox<MainFeedModel> mainFeedModelBox;
  final AppSharedPreferences appSharedPreferences;

  MainFeedRepository({
    required this.mainFeedModelBox,
    required this.appSharedPreferences,
  });

  Future<Either<String?, MainFeedModel>> get() async {
    try {
      final mainFeedCache = await mainFeedModelBox.getLocal();
      if (mainFeedCache != null) {
        return Right(mainFeedCache);
      }
      final token = appSharedPreferences.authToken;
      final response = await http.get(
          Uri.https(
            "api.github.com",
            "feeds",
          ),
          headers: {
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
            if (token?.isNotEmpty == true) "Authorization": "Bearer $token",
          });

      final responseJson = jsonDecode(response.body);
      final result = MainFeedModel.fromJson(responseJson);
      await mainFeedModelBox.save(result);
      return Right(result);
    } on http.ClientException{
      return Left("No internet");
    }
    catch (e, s) {
      return Left(null);
    }
  }
}
