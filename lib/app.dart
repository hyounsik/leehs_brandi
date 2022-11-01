import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:leehs_brandi/globals.dart';

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
    return Container();
  }
}
