import 'package:flutter/material.dart';

import 'package:leehs_brandi/globals.dart';
import 'package:rxdart/rxdart.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        l.info(this, "app in resumed");
        break;
      case AppLifecycleState.inactive:
        l.info(this, "app in inactive");
        break;
      case AppLifecycleState.paused:
        l.info(this, "app in paused");
        break;
      case AppLifecycleState.detached:
        l.info(this, "app in detached");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List>(
        stream: Rx.combineLatest2<ThemeData, RoutemasterDelegate, List>(
            themes.themeData,
            route.routerDelegate,
            (themeData, routeDelegate) => [themeData, routeDelegate]),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          final themeData = snapshot.data![0] as ThemeData;
          final routerDelegate = snapshot.data![1] as RoutemasterDelegate;
          return MaterialApp.router(
            routerDelegate: routerDelegate,
            routeInformationParser: const RoutemasterParser(),
            theme: themeData,
          );
        });
  }
}
