import 'package:either_dart/either.dart';
import 'package:github_feed/core/constants/app_shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthenticateTokenRepository {
  final AppSharedPreferences appSharedPreferences;

  AuthenticateTokenRepository({
    required this.appSharedPreferences,
  });

  Future<Either<bool, bool>> isTokenValid(String token) async {
    try {
      final response = await http.get(
        Uri.https("api.github.com", "user"),
        headers: {
          "Authorization": "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        appSharedPreferences.setAuthToken(token);
        return Right(true);
      }
      return Left(false);
    } catch (e, s) {
      return Left(false);
    }
  }

  Future<bool> deleteToken() async {
    return await appSharedPreferences.deleteAuthToken();
  }

  String? getToken() {
    return appSharedPreferences.authToken;
  }
}
