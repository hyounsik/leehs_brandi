// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kakao_image_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KakaoImageSearchResponse _$KakaoImageSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _KakaoImageSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$KakaoImageSearchResponse {
  KakaoImageSearchResponseMeta? get meta => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<KakaoImageSearchResponseDoc> get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoImageSearchResponseCopyWith<KakaoImageSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoImageSearchResponseCopyWith<$Res> {
  factory $KakaoImageSearchResponseCopyWith(KakaoImageSearchResponse value,
          $Res Function(KakaoImageSearchResponse) then) =
      _$KakaoImageSearchResponseCopyWithImpl<$Res, KakaoImageSearchResponse>;
  @useResult
  $Res call(
      {KakaoImageSearchResponseMeta? meta,
      String? error,
      List<KakaoImageSearchResponseDoc> documents});

  $KakaoImageSearchResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$KakaoImageSearchResponseCopyWithImpl<$Res,
        $Val extends KakaoImageSearchResponse>
    implements $KakaoImageSearchResponseCopyWith<$Res> {
  _$KakaoImageSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? error = freezed,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as KakaoImageSearchResponseMeta?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<KakaoImageSearchResponseDoc>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KakaoImageSearchResponseMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $KakaoImageSearchResponseMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KakaoImageSearchResponseCopyWith<$Res>
    implements $KakaoImageSearchResponseCopyWith<$Res> {
  factory _$$_KakaoImageSearchResponseCopyWith(
          _$_KakaoImageSearchResponse value,
          $Res Function(_$_KakaoImageSearchResponse) then) =
      __$$_KakaoImageSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KakaoImageSearchResponseMeta? meta,
      String? error,
      List<KakaoImageSearchResponseDoc> documents});

  @override
  $KakaoImageSearchResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_KakaoImageSearchResponseCopyWithImpl<$Res>
    extends _$KakaoImageSearchResponseCopyWithImpl<$Res,
        _$_KakaoImageSearchResponse>
    implements _$$_KakaoImageSearchResponseCopyWith<$Res> {
  __$$_KakaoImageSearchResponseCopyWithImpl(_$_KakaoImageSearchResponse _value,
      $Res Function(_$_KakaoImageSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? error = freezed,
    Object? documents = null,
  }) {
    return _then(_$_KakaoImageSearchResponse(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as KakaoImageSearchResponseMeta?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<KakaoImageSearchResponseDoc>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_KakaoImageSearchResponse implements _KakaoImageSearchResponse {
  _$_KakaoImageSearchResponse(
      {this.meta,
      this.error,
      final List<KakaoImageSearchResponseDoc> documents = const []})
      : _documents = documents;

  factory _$_KakaoImageSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KakaoImageSearchResponseFromJson(json);

  @override
  final KakaoImageSearchResponseMeta? meta;
  @override
  final String? error;
  final List<KakaoImageSearchResponseDoc> _documents;
  @override
  @JsonKey()
  List<KakaoImageSearchResponseDoc> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'KakaoImageSearchResponse(meta: $meta, error: $error, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KakaoImageSearchResponse &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, error,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KakaoImageSearchResponseCopyWith<_$_KakaoImageSearchResponse>
      get copyWith => __$$_KakaoImageSearchResponseCopyWithImpl<
          _$_KakaoImageSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KakaoImageSearchResponseToJson(
      this,
    );
  }
}

abstract class _KakaoImageSearchResponse implements KakaoImageSearchResponse {
  factory _KakaoImageSearchResponse(
          {final KakaoImageSearchResponseMeta? meta,
          final String? error,
          final List<KakaoImageSearchResponseDoc> documents}) =
      _$_KakaoImageSearchResponse;

  factory _KakaoImageSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_KakaoImageSearchResponse.fromJson;

  @override
  KakaoImageSearchResponseMeta? get meta;
  @override
  String? get error;
  @override
  List<KakaoImageSearchResponseDoc> get documents;
  @override
  @JsonKey(ignore: true)
  _$$_KakaoImageSearchResponseCopyWith<_$_KakaoImageSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

KakaoImageSearchResponseMeta _$KakaoImageSearchResponseMetaFromJson(
    Map<String, dynamic> json) {
  return _KakaoImageSearchResponseMeta.fromJson(json);
}

/// @nodoc
mixin _$KakaoImageSearchResponseMeta {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageable_count')
  int get pageableCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_end')
  bool get isEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoImageSearchResponseMetaCopyWith<KakaoImageSearchResponseMeta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoImageSearchResponseMetaCopyWith<$Res> {
  factory $KakaoImageSearchResponseMetaCopyWith(
          KakaoImageSearchResponseMeta value,
          $Res Function(KakaoImageSearchResponseMeta) then) =
      _$KakaoImageSearchResponseMetaCopyWithImpl<$Res,
          KakaoImageSearchResponseMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'is_end') bool isEnd});
}

/// @nodoc
class _$KakaoImageSearchResponseMetaCopyWithImpl<$Res,
        $Val extends KakaoImageSearchResponseMeta>
    implements $KakaoImageSearchResponseMetaCopyWith<$Res> {
  _$KakaoImageSearchResponseMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? pageableCount = null,
    Object? isEnd = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KakaoImageSearchResponseMetaCopyWith<$Res>
    implements $KakaoImageSearchResponseMetaCopyWith<$Res> {
  factory _$$_KakaoImageSearchResponseMetaCopyWith(
          _$_KakaoImageSearchResponseMeta value,
          $Res Function(_$_KakaoImageSearchResponseMeta) then) =
      __$$_KakaoImageSearchResponseMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'is_end') bool isEnd});
}

/// @nodoc
class __$$_KakaoImageSearchResponseMetaCopyWithImpl<$Res>
    extends _$KakaoImageSearchResponseMetaCopyWithImpl<$Res,
        _$_KakaoImageSearchResponseMeta>
    implements _$$_KakaoImageSearchResponseMetaCopyWith<$Res> {
  __$$_KakaoImageSearchResponseMetaCopyWithImpl(
      _$_KakaoImageSearchResponseMeta _value,
      $Res Function(_$_KakaoImageSearchResponseMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? pageableCount = null,
    Object? isEnd = null,
  }) {
    return _then(_$_KakaoImageSearchResponseMeta(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KakaoImageSearchResponseMeta implements _KakaoImageSearchResponseMeta {
  _$_KakaoImageSearchResponseMeta(
      {@JsonKey(name: 'total_count') this.totalCount = 0,
      @JsonKey(name: 'pageable_count') this.pageableCount = 0,
      @JsonKey(name: 'is_end') this.isEnd = false});

  factory _$_KakaoImageSearchResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$$_KakaoImageSearchResponseMetaFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'pageable_count')
  final int pageableCount;
  @override
  @JsonKey(name: 'is_end')
  final bool isEnd;

  @override
  String toString() {
    return 'KakaoImageSearchResponseMeta(totalCount: $totalCount, pageableCount: $pageableCount, isEnd: $isEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KakaoImageSearchResponseMeta &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pageableCount, pageableCount) ||
                other.pageableCount == pageableCount) &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, pageableCount, isEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KakaoImageSearchResponseMetaCopyWith<_$_KakaoImageSearchResponseMeta>
      get copyWith => __$$_KakaoImageSearchResponseMetaCopyWithImpl<
          _$_KakaoImageSearchResponseMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KakaoImageSearchResponseMetaToJson(
      this,
    );
  }
}

abstract class _KakaoImageSearchResponseMeta
    implements KakaoImageSearchResponseMeta {
  factory _KakaoImageSearchResponseMeta(
          {@JsonKey(name: 'total_count') final int totalCount,
          @JsonKey(name: 'pageable_count') final int pageableCount,
          @JsonKey(name: 'is_end') final bool isEnd}) =
      _$_KakaoImageSearchResponseMeta;

  factory _KakaoImageSearchResponseMeta.fromJson(Map<String, dynamic> json) =
      _$_KakaoImageSearchResponseMeta.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'pageable_count')
  int get pageableCount;
  @override
  @JsonKey(name: 'is_end')
  bool get isEnd;
  @override
  @JsonKey(ignore: true)
  _$$_KakaoImageSearchResponseMetaCopyWith<_$_KakaoImageSearchResponseMeta>
      get copyWith => throw _privateConstructorUsedError;
}

KakaoImageSearchResponseDoc _$KakaoImageSearchResponseDocFromJson(
    Map<String, dynamic> json) {
  return _KakaoImageSearchResponseDoc.fromJson(json);
}

/// @nodoc
mixin _$KakaoImageSearchResponseDoc {
  @JsonKey(name: 'collection')
  String get collection => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_sitename')
  String get displaySitename => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_url')
  String get docUrl => throw _privateConstructorUsedError;
  DateTime? get datetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoImageSearchResponseDocCopyWith<KakaoImageSearchResponseDoc>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoImageSearchResponseDocCopyWith<$Res> {
  factory $KakaoImageSearchResponseDocCopyWith(
          KakaoImageSearchResponseDoc value,
          $Res Function(KakaoImageSearchResponseDoc) then) =
      _$KakaoImageSearchResponseDocCopyWithImpl<$Res,
          KakaoImageSearchResponseDoc>;
  @useResult
  $Res call(
      {@JsonKey(name: 'collection') String collection,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'display_sitename') String displaySitename,
      @JsonKey(name: 'doc_url') String docUrl,
      DateTime? datetime});
}

/// @nodoc
class _$KakaoImageSearchResponseDocCopyWithImpl<$Res,
        $Val extends KakaoImageSearchResponseDoc>
    implements $KakaoImageSearchResponseDocCopyWith<$Res> {
  _$KakaoImageSearchResponseDocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? thumbnailUrl = null,
    Object? imageUrl = null,
    Object? width = null,
    Object? height = null,
    Object? displaySitename = null,
    Object? docUrl = null,
    Object? datetime = freezed,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      displaySitename: null == displaySitename
          ? _value.displaySitename
          : displaySitename // ignore: cast_nullable_to_non_nullable
              as String,
      docUrl: null == docUrl
          ? _value.docUrl
          : docUrl // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KakaoImageSearchResponseDocCopyWith<$Res>
    implements $KakaoImageSearchResponseDocCopyWith<$Res> {
  factory _$$_KakaoImageSearchResponseDocCopyWith(
          _$_KakaoImageSearchResponseDoc value,
          $Res Function(_$_KakaoImageSearchResponseDoc) then) =
      __$$_KakaoImageSearchResponseDocCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'collection') String collection,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'display_sitename') String displaySitename,
      @JsonKey(name: 'doc_url') String docUrl,
      DateTime? datetime});
}

/// @nodoc
class __$$_KakaoImageSearchResponseDocCopyWithImpl<$Res>
    extends _$KakaoImageSearchResponseDocCopyWithImpl<$Res,
        _$_KakaoImageSearchResponseDoc>
    implements _$$_KakaoImageSearchResponseDocCopyWith<$Res> {
  __$$_KakaoImageSearchResponseDocCopyWithImpl(
      _$_KakaoImageSearchResponseDoc _value,
      $Res Function(_$_KakaoImageSearchResponseDoc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? thumbnailUrl = null,
    Object? imageUrl = null,
    Object? width = null,
    Object? height = null,
    Object? displaySitename = null,
    Object? docUrl = null,
    Object? datetime = freezed,
  }) {
    return _then(_$_KakaoImageSearchResponseDoc(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      displaySitename: null == displaySitename
          ? _value.displaySitename
          : displaySitename // ignore: cast_nullable_to_non_nullable
              as String,
      docUrl: null == docUrl
          ? _value.docUrl
          : docUrl // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KakaoImageSearchResponseDoc implements _KakaoImageSearchResponseDoc {
  _$_KakaoImageSearchResponseDoc(
      {@JsonKey(name: 'collection')
          this.collection = '',
      @JsonKey(name: 'thumbnail_url')
          this.thumbnailUrl = 'https://hsprofile-1025.web.app/images/logo3.png',
      @JsonKey(name: 'image_url')
          this.imageUrl = 'https://hsprofile-1025.web.app/images/logo3.png',
      @JsonKey(name: 'width')
          this.width = 0,
      @JsonKey(name: 'height')
          this.height = 0,
      @JsonKey(name: 'display_sitename')
          this.displaySitename = '',
      @JsonKey(name: 'doc_url')
          this.docUrl = '',
      this.datetime});

  factory _$_KakaoImageSearchResponseDoc.fromJson(Map<String, dynamic> json) =>
      _$$_KakaoImageSearchResponseDocFromJson(json);

  @override
  @JsonKey(name: 'collection')
  final String collection;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'display_sitename')
  final String displaySitename;
  @override
  @JsonKey(name: 'doc_url')
  final String docUrl;
  @override
  final DateTime? datetime;

  @override
  String toString() {
    return 'KakaoImageSearchResponseDoc(collection: $collection, thumbnailUrl: $thumbnailUrl, imageUrl: $imageUrl, width: $width, height: $height, displaySitename: $displaySitename, docUrl: $docUrl, datetime: $datetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KakaoImageSearchResponseDoc &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.displaySitename, displaySitename) ||
                other.displaySitename == displaySitename) &&
            (identical(other.docUrl, docUrl) || other.docUrl == docUrl) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collection, thumbnailUrl,
      imageUrl, width, height, displaySitename, docUrl, datetime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KakaoImageSearchResponseDocCopyWith<_$_KakaoImageSearchResponseDoc>
      get copyWith => __$$_KakaoImageSearchResponseDocCopyWithImpl<
          _$_KakaoImageSearchResponseDoc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KakaoImageSearchResponseDocToJson(
      this,
    );
  }
}

abstract class _KakaoImageSearchResponseDoc
    implements KakaoImageSearchResponseDoc {
  factory _KakaoImageSearchResponseDoc(
      {@JsonKey(name: 'collection') final String collection,
      @JsonKey(name: 'thumbnail_url') final String thumbnailUrl,
      @JsonKey(name: 'image_url') final String imageUrl,
      @JsonKey(name: 'width') final int width,
      @JsonKey(name: 'height') final int height,
      @JsonKey(name: 'display_sitename') final String displaySitename,
      @JsonKey(name: 'doc_url') final String docUrl,
      final DateTime? datetime}) = _$_KakaoImageSearchResponseDoc;

  factory _KakaoImageSearchResponseDoc.fromJson(Map<String, dynamic> json) =
      _$_KakaoImageSearchResponseDoc.fromJson;

  @override
  @JsonKey(name: 'collection')
  String get collection;
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(name: 'display_sitename')
  String get displaySitename;
  @override
  @JsonKey(name: 'doc_url')
  String get docUrl;
  @override
  DateTime? get datetime;
  @override
  @JsonKey(ignore: true)
  _$$_KakaoImageSearchResponseDocCopyWith<_$_KakaoImageSearchResponseDoc>
      get copyWith => throw _privateConstructorUsedError;
}
