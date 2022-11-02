import 'package:leehs_brandi/locator/locator.dart';
import 'package:leehs_brandi/envs/environment.dart';
import 'package:leehs_brandi/routes/route.dart';
import 'package:leehs_brandi/repositories/repository.dart';

import 'services/services.dart';

export 'package:leehs_brandi/styles/styles.dart';
export 'package:leehs_brandi/locator/locator.dart';
export 'package:leehs_brandi/blocs/blocs.dart';
export 'package:routemaster/routemaster.dart';
export 'package:leehs_brandi/models/models.dart';
export 'package:leehs_brandi/widgets/widgets.dart';
export 'package:leehs_brandi/views/views.dart';
export 'package:leehs_brandi/utils/utils.dart';
export 'package:flutter/material.dart';

final env = locator<Environment>();
final l = locator<LogService>();
final route = locator<AppRoute>();
final themes = locator<ThemeService>();
final repo = locator<Repository>();
