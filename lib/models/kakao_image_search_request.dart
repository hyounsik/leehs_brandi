import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_image_search_request.freezed.dart';
part 'kakao_image_search_request.g.dart';

enum KakaoImageSearchSort {
  @JsonValue('accuracy')
  accuracy,
  @JsonValue('recency')
  recency,
}

@freezed
class KakaoImageSearchRequest with _$KakaoImageSearchRequest {
  factory KakaoImageSearchRequest({
    required String query,
    @Default(KakaoImageSearchSort.accuracy) KakaoImageSearchSort? sort,
    @Default(1) int? page,
    @Default(30) int? size,
  }) = _KakaoImageSearchRequest;

  factory KakaoImageSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchRequestFromJson(json);
}
