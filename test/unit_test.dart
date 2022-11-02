import 'package:leehs_brandi/apis/kakao_rest_api.dart';
import 'package:leehs_brandi/models/models.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'models.mocks.dart';
import 'repository.mocks.dart';

class MockClient extends Mock implements http.Client {}

class MockKakaoRestApi extends Mock implements KakaoRestApi {
  @override
  Future<Map<String, dynamic>> getImagesWithQuery(String query) async {
    return {
      "documents": [
        {
          "collection": "blog",
          "datetime": "2018-09-18T16:30:34.000+09:00",
          "display_sitename": "티스토리",
          "doc_url": "http://justmakeyourself.tistory.com/97",
          "height": 409,
          "image_url": "http://t1.daumcdn.net/cfile/tistory/99489C495BA0A6B935",
          "thumbnail_url":
              "https://search1.kakaocdn.net/argon/130x130_85_c/F0vA5rqkNt0",
          "width": 820
        },
        {
          "collection": "blog",
          "datetime": "2012-11-24T18:14:00.000+09:00",
          "display_sitename": "네이버블로그",
          "doc_url": "http://blog.naver.com/sayaka112/150152453149",
          "height": 2604,
          "image_url":
              "http://postfiles9.naver.net/20121123_104/usamibabe_1353676707322TAM42_JPEG/longimage.jpg?type=w2",
          "thumbnail_url":
              "https://search3.kakaocdn.net/argon/130x130_85_c/1yhGKKfjx5L",
          "width": 740
        }
      ],
      "meta": {"is_end": true, "pageable_count": 2, "total_count": 2}
    };
  }
}

void main() {
  group('모델 테스트', () {
    test('MockKakaoImageSearchRequest 기본값 테스트', () {
      final req = MockKakaoImageSearchRequest();
      expect(req.query, '');
      expect(req.size, isNull);
      expect(req.page, isNull);
      expect(req.sort, isNull);
    });

    test('MockKakaoImageSearchResponse 기본값 테스트', () {
      final res = MockKakaoImageSearchResponse();
      expect(res.error, isNull);
      expect(res.meta, isNull);
      expect(res.documents, []);
    });
  });

  group('Repository mock 테스트', () {
    test('repo.getImage', () async {
      final repo = MockRepository();

      expect(await repo.getImages(query: 'query'),
          const TypeMatcher<KakaoImageSearchResponse>());
    });
  });

  group('Api 테스트', () {
    test('api.getImage', () async {
      final api = MockKakaoRestApi();
      expect(await api.getImagesWithQuery('query'),
          const TypeMatcher<Map<String, dynamic>>());
    });

    test('api.getImage() to KakaoImageSearchResponse', () async {
      final api = MockKakaoRestApi();
      final data = await api.getImagesWithQuery('query');
      final res = KakaoImageSearchResponse.fromJson(data);
      final meta = res.meta;
      final docs = res.documents;
      expect(res, const TypeMatcher<KakaoImageSearchResponse>());
      expect(meta, const TypeMatcher<KakaoImageSearchResponseMeta>());
      expect(docs, const TypeMatcher<List<KakaoImageSearchResponseDoc>>());
      expect(docs, isNotEmpty);
    });
  });
}
