import 'package:leehs_brandi/repositories/repository.dart';
import 'package:leehs_brandi/globals.dart';

/// 카카오 이미지 검색 Repository Mixin
mixin KakaoRestRepositoryMixin on BaseRepository {
  Future<KakaoImageSearchResponse> getImages(
      {required String query,
      KakaoImageSearchSort sort = KakaoImageSearchSort.accuracy,
      int page = 1,
      int size = 30}) async {
    page < 1 ? 1 : page;
    assert(page > 0, 'page is less than 1');
    final request = KakaoImageSearchRequest(
        query: query, sort: sort, page: '$page', size: '$size');
    try {
      final resData = await kakaoRestApi.getImages(request);
      return KakaoImageSearchResponse.fromJson(resData);
    } catch (e) {
      l.info(this, e.toString());
      return KakaoImageSearchResponse(
          meta: null, error: e.toString(), documents: []);
    }
  }
}
