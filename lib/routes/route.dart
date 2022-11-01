import 'package:flutter/material.dart';
import 'package:leehs_brandi/globals.dart';
import 'package:leehs_brandi/views/views.dart';
import 'package:provider/provider.dart';

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
                return const Redirect('/search');
              },
              '/search': (_) {
                return MaterialPage(
                    name: 'home',
                    child: Provider<KakaoImageSearchBloc>(
                        create: (_) => KakaoImageSearchBloc(),
                        dispose: (_, bloc) => bloc.dispose(),
                        child: const AppHome()));
              },
              '/search/detail': (_) {
                return MaterialPage(name: 'home', child: Container());
              }
            }));

    setRouterDelegate(delegate);
  }
}
