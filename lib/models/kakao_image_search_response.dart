import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_image_search_response.freezed.dart';
part 'kakao_image_search_response.g.dart';

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

@freezed
class KakaoImageSearchResponseDoc with _$KakaoImageSearchResponseDoc {
  factory KakaoImageSearchResponseDoc({
    @Default('') String title,
    @Default('') String contents,
    @Default('') String url,
    @Default('') String blogname,
    @Default('') String thumbnail,
    DateTime? datetime,
  }) = _KakaoImageSearchResponseDoc;

  factory KakaoImageSearchResponseDoc.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchResponseDocFromJson(json);
}
