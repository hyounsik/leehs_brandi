import 'dart:convert';
import 'package:leehs_brandi/globals.dart';
import 'package:http/http.dart' as http;

/// Rest api
class KakaoRestApi {
  final http.Client client;
  KakaoRestApi(this.client);
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
    http.Response response = await client.get(
      url,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'KakaoAK $apiKey'
      },
    );
    return _response(response);
  }

  /// GET /v2/search/image
  Future<Map<String, dynamic>> getImages(KakaoImageSearchRequest request) {
    return _get('/v2/search/image', request.toJson());
  }

  Future<Map<String, dynamic>> getImagesWithQuery(
    String query,
  ) {
    final request = KakaoImageSearchRequest(query: query);
    return getImages(request);
  }
}
