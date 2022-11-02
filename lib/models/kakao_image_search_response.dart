import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_image_search_response.freezed.dart';
part 'kakao_image_search_response.g.dart';

/// 카카오 이미지 검색 응답 모델
@freezed
class KakaoImageSearchResponse with _$KakaoImageSearchResponse {
  @JsonSerializable(explicitToJson: true)
  factory KakaoImageSearchResponse(
          {KakaoImageSearchResponseMeta? meta,
          String? error,
          @Default([]) List<KakaoImageSearchResponseDoc> documents}) =
      _KakaoImageSearchResponse;

  factory KakaoImageSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchResponseFromJson(json);
}

/// 카카오 이미지 검색 응답 메타 모델
@freezed
class KakaoImageSearchResponseMeta with _$KakaoImageSearchResponseMeta {
  factory KakaoImageSearchResponseMeta({
    @JsonKey(name: 'total_count') @Default(0) int totalCount,
    @JsonKey(name: 'pageable_count') @Default(0) int pageableCount,
    @JsonKey(name: 'is_end') @Default(false) bool isEnd,
  }) = _KakaoImageSearchResponseMeta;

  factory KakaoImageSearchResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchResponseMetaFromJson(json);
}

/// 카카오 이미지 검색 응답 도큐먼트 모델
@freezed
class KakaoImageSearchResponseDoc with _$KakaoImageSearchResponseDoc {
  factory KakaoImageSearchResponseDoc({
    @JsonKey(name: 'collection') @Default('') String collection,
    @JsonKey(name: 'thumbnail_url')
    @Default('https://hsprofile-1025.web.app/images/logo3.png')
        String thumbnailUrl,
    @JsonKey(name: 'image_url')
    @Default('https://hsprofile-1025.web.app/images/logo3.png')
        String imageUrl,
    @JsonKey(name: 'width') @Default(0) int width,
    @JsonKey(name: 'height') @Default(0) int height,
    @JsonKey(name: 'display_sitename') @Default('') String displaySitename,
    @JsonKey(name: 'doc_url') @Default('') String docUrl,
    DateTime? datetime,
  }) = _KakaoImageSearchResponseDoc;

  factory KakaoImageSearchResponseDoc.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchResponseDocFromJson(json);
}
