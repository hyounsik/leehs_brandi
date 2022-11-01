import 'package:leehs_brandi/blocs/disposable.dart';
import 'package:leehs_brandi/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rxdart/rxdart.dart';

class ThemeService implements Disposable {
  final _themeMode = BehaviorSubject<ThemeMode>.seeded(ThemeMode.light);
  Stream<ThemeMode> get themeMode => _themeMode.stream.distinct();
  ThemeMode get currentThemeMode => _themeMode.value;

  final _brightness = BehaviorSubject<Brightness>.seeded(Brightness.light);
  Stream<Brightness> get brightness => _brightness.stream.distinct();
  Brightness get currentBrightness => _brightness.value;
  void Function(Brightness) get setBrightness => _brightness.add;
  bool get isDark => currentBrightness == Brightness.dark;
  bool get isLight => currentBrightness == Brightness.light;

  final _platformBrightness = BehaviorSubject<Brightness>();
  Stream<Brightness> get platformBrightness =>
      _platformBrightness.stream.distinct();
  Brightness get currentPlatformBrightness => _platformBrightness.value;

  final _themeData = BehaviorSubject<ThemeData>.seeded(ThemeData.light());
  Stream<ThemeData> get themeData => _themeData.stream;
  ThemeData get currentThemeData => _themeData.value;
  AppTextTheme get currentTextTheme =>
      currentThemeData.extension<AppTextTheme>()!;

  ThemeService() {
    updatePlatformBrightness();
  }

  @override
  void dispose() {
    _themeMode.close();
    _brightness.close();
    _platformBrightness.close();
    _themeData.close();
  }

  void switchTheme() {
    _themeData.add(currentThemeData == AppThemeDatas.lightThemeData
        ? AppThemeDatas.lightThemeData
        : AppThemeDatas.darkThemeData);
  }

  void updatePlatformBrightness() {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    _platformBrightness.add(brightness);
    if (currentThemeMode == ThemeMode.system) {
      _brightness.add(brightness);
    }
  }

  void setThemeMode(ThemeMode themeMode) {
    updatePlatformBrightness();
    if (themeMode == ThemeMode.system) {
      _brightness.add(currentPlatformBrightness);
    } else {
      _brightness.add(
          themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light);
    }
    _themeMode.add(themeMode);
  }

  void setThemeData(ThemeData themeData) {
    _themeData.add(themeData);
  }
}
