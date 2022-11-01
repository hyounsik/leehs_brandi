import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class AppRoute {
  static final AppRoute _instance = AppRoute._();
  static AppRoute get instance => _instance;

  late final RoutemasterDelegate delegate;

  AppRoute._() {
    delegate = RoutemasterDelegate(
        routesBuilder: (_) =>
            RouteMap(onUnknownRoute: (_) => const Redirect('/'), routes: {
              '/': (_) {
                return MaterialPage(name: 'home', child: Container());
              }
            }));
  }
}
