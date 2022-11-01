import 'package:leehs_brandi/apis/apis.dart';
import 'package:leehs_brandi/repositories/kakao_rest_repository.dart';

class BaseRepository {
  final KakaoRestApi kakaoRestApi;
  BaseRepository({required this.kakaoRestApi});
}

class Repository extends BaseRepository with KakaoRestRepositoryMixin {
  Repository({
    required super.kakaoRestApi,
  });
}
