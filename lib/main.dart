import 'dart:async';

import 'package:flutter/material.dart';
import 'package:leehs_brandi/app.dart';
import 'package:leehs_brandi/globals.dart';
import 'package:leehs_brandi/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    registeGlobals();

    runApp(
      FutureBuilder<void>(
          future: locator.allReady(),
          builder: (_, snapshot) {
            if (snapshot.hasError) throw snapshot.error ?? Exception('main');
            if (!snapshot.hasData) return const SplashScreen();
            return Provider<AppGlobalBloc>(
                dispose: (_, x) => x.dispose(),
                create: (_) => AppGlobalBloc(),
                child: const App());
          }),
    );
  }, (error, stackTrace) {});
}
