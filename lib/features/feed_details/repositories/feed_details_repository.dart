import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

class FeedDetailsRepository {
  Future<Either<bool, String>> getAtom(String url) async {
    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri, headers: {
        "Accept": "application/atom+xml",
      });

      if(response.statusCode == 200){
        return Right(response.body);
      }
      return Left(false);
    } catch (e, s) {
      return Left(false);
    }
  }
}
