import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

class FeedDetailsRepository {
  Future<Either<bool, String>> getAtom(String url) async {
    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri, headers: {
        "Accept": "application/atom+xml",
      });

      return Right(response.body);
    } catch (e, s) {
      return Left(false);
    }
  }
}
