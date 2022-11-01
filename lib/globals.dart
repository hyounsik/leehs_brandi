import 'package:leehs_brandi/locator/locator.dart';
import 'package:leehs_brandi/envs/environment.dart';
import 'package:leehs_brandi/routes/route.dart';

import 'services/services.dart';

final env = locator<Environment>();
final l = locator<LogService>();
final route = locator<AppRoute>();
