// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_image_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KakaoImageSearchResponse _$$_KakaoImageSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_KakaoImageSearchResponse(
      meta: json['meta'] == null
          ? null
          : KakaoImageSearchResponseMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      error: json['error'] as String?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => KakaoImageSearchResponseDoc.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_KakaoImageSearchResponseToJson(
        _$_KakaoImageSearchResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta?.toJson(),
      'error': instance.error,
      'documents': instance.documents.map((e) => e.toJson()).toList(),
    };

_$_KakaoImageSearchResponseMeta _$$_KakaoImageSearchResponseMetaFromJson(
        Map<String, dynamic> json) =>
    _$_KakaoImageSearchResponseMeta(
      totalCount: json['total_count'] as int? ?? 0,
      pageableCount: json['pageable_count'] as int? ?? 0,
      isEnd: json['is_end'] as bool? ?? false,
    );

Map<String, dynamic> _$$_KakaoImageSearchResponseMetaToJson(
        _$_KakaoImageSearchResponseMeta instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'pageable_count': instance.pageableCount,
      'is_end': instance.isEnd,
    };

_$_KakaoImageSearchResponseDoc _$$_KakaoImageSearchResponseDocFromJson(
        Map<String, dynamic> json) =>
    _$_KakaoImageSearchResponseDoc(
      collection: json['collection'] as String? ?? '',
      thumbnailUrl: json['thumbnail_url'] as String? ??
          'https://hsprofile-1025.web.app/images/logo3.png',
      imageUrl: json['image_url'] as String? ??
          'https://hsprofile-1025.web.app/images/logo3.png',
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      displaySitename: json['display_sitename'] as String? ?? '',
      docUrl: json['doc_url'] as String? ?? '',
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
    );

Map<String, dynamic> _$$_KakaoImageSearchResponseDocToJson(
        _$_KakaoImageSearchResponseDoc instance) =>
    <String, dynamic>{
      'collection': instance.collection,
      'thumbnail_url': instance.thumbnailUrl,
      'image_url': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
      'display_sitename': instance.displaySitename,
      'doc_url': instance.docUrl,
      'datetime': instance.datetime?.toIso8601String(),
    };
