import 'package:leehs_brandi/envs/environment.dart';
import 'package:get_it/get_it.dart';
import 'package:leehs_brandi/routes/route.dart';
import 'package:leehs_brandi/services/services.dart';

final locator = GetIt.instance;

void registeGlobals() {
  locator.registerSingleton<ConnectivityService>(ConnectivityService(),
      dispose: (_) => _.dispose());
  locator.registerSingleton<Environment>(Environment());
  locator.registerSingleton<LogService>(LogService.instance);
  locator.registerSingleton<AppRoute>(AppRoute.instance);
}
