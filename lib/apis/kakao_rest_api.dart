import 'dart:convert';
import 'package:leehs_brandi/globals.dart';
import 'package:http/http.dart' as http;

class KakaoRestApi {
  Future<Map<String, dynamic>> _response(http.Response response) async {
    if (response.statusCode == 200) {
      // l.info(this, "responseBody : ${response.body}");
      final Map<String, dynamic> responseBody = jsonDecode(response.body);

      return responseBody;
    } else if (response.statusCode >= 400 && response.statusCode <= 500) {
      l.warning(
          this, "error:${response.request!.url.path} ${response.statusCode}");
      throw ("Client Error");
    } else {
      l.warning(this, "error: ${response.statusCode}");
      throw ("Server Error");
    }
  }

  Future<Map<String, dynamic>> _get(
      String path, Map<String, dynamic> queryParameters) async {
    String apiKey = env.kakaoKey;
    String apiUrl = env.kakaoUrl;

    final url = Uri.https(apiUrl, path, queryParameters);
    http.Response response = await http.get(
      url,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'KakaoAK $apiKey'
      },
    );
    return _response(response);
  }

  Future<Map<String, dynamic>> getImages(KakaoImageSearchRequest request) {
    return _get('/v2/search/image', request.toJson());
  }
}
