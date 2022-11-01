import 'package:flutter/material.dart';
import 'package:leehs_brandi/views/views.dart';
import 'package:routemaster/routemaster.dart';
import 'package:rxdart/rxdart.dart';

class AppRoute {
  static final AppRoute _instance = AppRoute._();
  static AppRoute get instance => _instance;

  late final initStateRouteMap = RouteMap(
      onUnknownRoute: (_) => const MaterialPage(child: SplashScreen()),
      routes: const {});

  late final _routerDelegate = BehaviorSubject<RoutemasterDelegate>.seeded(
      RoutemasterDelegate(routesBuilder: (_) => initStateRouteMap));
  Stream<RoutemasterDelegate> get routerDelegate =>
      _routerDelegate.stream.distinct();
  RoutemasterDelegate get currentRouterDelegate => _routerDelegate.value;
  Function get setRouterDelegate => _routerDelegate.add;

  AppRoute._() {
    RoutemasterDelegate delegate = RoutemasterDelegate(
        routesBuilder: (_) =>
            RouteMap(onUnknownRoute: (_) => const Redirect('/'), routes: {
              '/': (_) {
                return const MaterialPage(name: 'home', child: AppHome());
              }
            }));

    setRouterDelegate(delegate);
  }
}
