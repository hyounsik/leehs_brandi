// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_image_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KakaoImageSearchRequest _$$_KakaoImageSearchRequestFromJson(
        Map<String, dynamic> json) =>
    _$_KakaoImageSearchRequest(
      query: json['query'] as String,
      sort: $enumDecodeNullable(_$KakaoImageSearchSortEnumMap, json['sort']) ??
          KakaoImageSearchSort.accuracy,
      page: json['page'] as String? ?? '1',
      size: json['size'] as String? ?? '30',
    );

Map<String, dynamic> _$$_KakaoImageSearchRequestToJson(
        _$_KakaoImageSearchRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'sort': _$KakaoImageSearchSortEnumMap[instance.sort],
      'page': instance.page,
      'size': instance.size,
    };

const _$KakaoImageSearchSortEnumMap = {
  KakaoImageSearchSort.accuracy: 'accuracy',
  KakaoImageSearchSort.recency: 'recency',
};
