import 'package:leehs_brandi/repositories/repository.dart';
import 'package:leehs_brandi/globals.dart';

mixin KakaoRestRepositoryMixin on BaseRepository {
  Future<KakaoImageSearchResponse> getImages(
      KakaoImageSearchRequest request) async {
    try {
      final resData = await kakaoRestApi.getImages(request);
      return KakaoImageSearchResponse.fromJson(resData);
    } catch (e) {
      l.info(this, e.toString());
      return KakaoImageSearchResponse(meta: null, documents: []);
    }
  }
}
