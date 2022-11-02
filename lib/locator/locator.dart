import 'package:leehs_brandi/envs/environment.dart';
import 'package:get_it/get_it.dart';
import 'package:leehs_brandi/routes/route.dart';
import 'package:leehs_brandi/services/services.dart';
import 'package:leehs_brandi/apis/apis.dart';
import 'package:leehs_brandi/repositories/repository.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void registeGlobals() {
  locator.registerSingleton<ConnectivityService>(ConnectivityService(),
      dispose: (_) => _.dispose());
  locator.registerSingleton<Environment>(Environment());
  locator.registerSingleton<LogService>(LogService.instance);
  locator.registerSingleton<AppRoute>(AppRoute.instance);
  locator.registerSingleton<ThemeService>(ThemeService(),
      dispose: (_) => _.dispose());
  locator.registerSingletonAsync<KakaoRestApi>(() async {
    final client = http.Client();
    return KakaoRestApi(client);
  });
  locator.registerSingletonAsync<Repository>(() async {
    final kakaoApi = await locator.getAsync<KakaoRestApi>();
    return Repository(kakaoRestApi: kakaoApi);
  }, dependsOn: [KakaoRestApi]);
}
