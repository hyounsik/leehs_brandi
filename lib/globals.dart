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

/// 앱 전역에서 반복적으로 쓰이는 객체들을 글로벌 환경에 노출 시킵니다.
///
/// [Environment] 환경값
/// [LogService] 개발자 로거
/// [AppRoute] Route 서비스
/// [ThemeService] 테마 서비스. 라이트 테마로 초기화 되어있습니다.
/// [Repository] 레포지토리

final env = locator<Environment>();
final l = locator<LogService>();
final route = locator<AppRoute>();
final themes = locator<ThemeService>();
final repo = locator<Repository>();
