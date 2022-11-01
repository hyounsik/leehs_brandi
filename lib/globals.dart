import 'package:leehs_brandi/locator/locator.dart';
import 'package:leehs_brandi/envs/environment.dart';
import 'package:leehs_brandi/routes/route.dart';
import 'package:leehs_brandi/styles/styles.dart';

import 'services/services.dart';

export 'package:routemaster/routemaster.dart';

final env = locator<Environment>();
final l = locator<LogService>();
final route = locator<AppRoute>();
final themes = locator<ThemeService>();
