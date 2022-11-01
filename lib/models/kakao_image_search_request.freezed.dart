// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kakao_image_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KakaoImageSearchRequest _$KakaoImageSearchRequestFromJson(
    Map<String, dynamic> json) {
  return _KakaoImageSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$KakaoImageSearchRequest {
  String get query => throw _privateConstructorUsedError;
  KakaoImageSearchSort? get sort => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoImageSearchRequestCopyWith<KakaoImageSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoImageSearchRequestCopyWith<$Res> {
  factory $KakaoImageSearchRequestCopyWith(KakaoImageSearchRequest value,
          $Res Function(KakaoImageSearchRequest) then) =
      _$KakaoImageSearchRequestCopyWithImpl<$Res, KakaoImageSearchRequest>;
  @useResult
  $Res call({String query, KakaoImageSearchSort? sort, int? page, int? size});
}

/// @nodoc
class _$KakaoImageSearchRequestCopyWithImpl<$Res,
        $Val extends KakaoImageSearchRequest>
    implements $KakaoImageSearchRequestCopyWith<$Res> {
  _$KakaoImageSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sort = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as KakaoImageSearchSort?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KakaoImageSearchRequestCopyWith<$Res>
    implements $KakaoImageSearchRequestCopyWith<$Res> {
  factory _$$_KakaoImageSearchRequestCopyWith(_$_KakaoImageSearchRequest value,
          $Res Function(_$_KakaoImageSearchRequest) then) =
      __$$_KakaoImageSearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, KakaoImageSearchSort? sort, int? page, int? size});
}

/// @nodoc
class __$$_KakaoImageSearchRequestCopyWithImpl<$Res>
    extends _$KakaoImageSearchRequestCopyWithImpl<$Res,
        _$_KakaoImageSearchRequest>
    implements _$$_KakaoImageSearchRequestCopyWith<$Res> {
  __$$_KakaoImageSearchRequestCopyWithImpl(_$_KakaoImageSearchRequest _value,
      $Res Function(_$_KakaoImageSearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sort = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_KakaoImageSearchRequest(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as KakaoImageSearchSort?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KakaoImageSearchRequest implements _KakaoImageSearchRequest {
  _$_KakaoImageSearchRequest(
      {required this.query,
      this.sort = KakaoImageSearchSort.accuracy,
      this.page = 1,
      this.size = 30});

  factory _$_KakaoImageSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$$_KakaoImageSearchRequestFromJson(json);

  @override
  final String query;
  @override
  @JsonKey()
  final KakaoImageSearchSort? sort;
  @override
  @JsonKey()
  final int? page;
  @override
  @JsonKey()
  final int? size;

  @override
  String toString() {
    return 'KakaoImageSearchRequest(query: $query, sort: $sort, page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KakaoImageSearchRequest &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, sort, page, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KakaoImageSearchRequestCopyWith<_$_KakaoImageSearchRequest>
      get copyWith =>
          __$$_KakaoImageSearchRequestCopyWithImpl<_$_KakaoImageSearchRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KakaoImageSearchRequestToJson(
      this,
    );
  }
}

abstract class _KakaoImageSearchRequest implements KakaoImageSearchRequest {
  factory _KakaoImageSearchRequest(
      {required final String query,
      final KakaoImageSearchSort? sort,
      final int? page,
      final int? size}) = _$_KakaoImageSearchRequest;

  factory _KakaoImageSearchRequest.fromJson(Map<String, dynamic> json) =
      _$_KakaoImageSearchRequest.fromJson;

  @override
  String get query;
  @override
  KakaoImageSearchSort? get sort;
  @override
  int? get page;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$_KakaoImageSearchRequestCopyWith<_$_KakaoImageSearchRequest>
      get copyWith => throw _privateConstructorUsedError;
}
