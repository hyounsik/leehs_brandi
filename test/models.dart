import 'package:mockito/annotations.dart';
import 'package:leehs_brandi/models/models.dart';

@GenerateNiceMocks([
  MockSpec<KakaoImageSearchRequest>(),
  MockSpec<KakaoImageSearchResponse>(),
  MockSpec<KakaoImageSearchResponseMeta>(),
  MockSpec<KakaoImageSearchResponseDoc>()
])
class Dummy {}
