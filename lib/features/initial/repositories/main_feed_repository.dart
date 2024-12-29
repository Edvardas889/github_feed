import 'package:either_dart/either.dart';
import 'package:github_feed/features/initial/models/main_feed_model.dart';
import 'package:http/http.dart' as http;

class MainFeedRepository {
  Future<Either<bool, MainFeedModel>> get() async {
    try {
      final response = await http.get(
        Uri.https(
          "api.github.com",
          "events",
        ),
        headers: {},
      );
      final body = response.body;
      return Right(MainFeedModel());
    } catch (e, s) {
      return Left(false);
    }
  }
}
