import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_image_search_request.freezed.dart';
part 'kakao_image_search_request.g.dart';

/// 카카오 이미지 검색 정렬 enum
enum KakaoImageSearchSort {
  @JsonValue('accuracy')
  accuracy,
  @JsonValue('recency')
  recency,
}

/// 카카오 이미지 검색 요청 모델
@freezed
class KakaoImageSearchRequest with _$KakaoImageSearchRequest {
  factory KakaoImageSearchRequest({
    required String query,
    @Default(KakaoImageSearchSort.accuracy) KakaoImageSearchSort? sort,
    @Default('1') String? page,
    @Default('30') String? size,
  }) = _KakaoImageSearchRequest;

  factory KakaoImageSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$KakaoImageSearchRequestFromJson(json);
}
