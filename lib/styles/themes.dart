import 'package:flutter/material.dart';
import 'package:leehs_brandi/styles/styles.dart';

class AppThemeDatas {
  static final lightThemeData = ThemeData.from(
      useMaterial3: true,
      textTheme: appMaterial3TextTheme,
      colorScheme: const ColorScheme.light());
  static final darkThemeData = ThemeData.from(
      useMaterial3: true,
      textTheme: appMaterial3TextTheme,
      colorScheme: const ColorScheme.dark());
}
