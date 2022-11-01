import 'package:flutter/material.dart';

final appMaterial3TextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: MaterialDesign3TypoToken.displayLarge.size,
    fontWeight: FontWeight.w900,
  ),
  displayMedium: TextStyle(
    fontSize: MaterialDesign3TypoToken.displayMedium.size,
    fontWeight: FontWeight.w900,
  ),
  displaySmall: TextStyle(
    fontSize: MaterialDesign3TypoToken.displaySmall.size,
    fontWeight: FontWeight.w900,
  ),
  headlineLarge: TextStyle(
    fontSize: MaterialDesign3TypoToken.headlineLarge.size,
    fontWeight: FontWeight.w900,
  ),
  headlineMedium: TextStyle(
    fontSize: MaterialDesign3TypoToken.headlineMedium.size,
    fontWeight: FontWeight.w900,
  ),
  headlineSmall: TextStyle(
    fontSize: MaterialDesign3TypoToken.headlineSmall.size,
    fontWeight: FontWeight.w900,
  ),
  titleLarge: TextStyle(
    fontSize: MaterialDesign3TypoToken.titleLarge.size,
    fontWeight: FontWeight.w900,
  ),
  titleMedium: TextStyle(
    fontSize: MaterialDesign3TypoToken.titleMedium.size,
    fontWeight: FontWeight.w900,
  ),
  titleSmall: TextStyle(
    fontSize: MaterialDesign3TypoToken.titleSmall.size,
    fontWeight: FontWeight.w900,
  ),
  labelLarge: TextStyle(
    fontSize: MaterialDesign3TypoToken.labelLarge.size,
  ),
  labelMedium: TextStyle(
    fontSize: MaterialDesign3TypoToken.labelMedium.size,
  ),
  labelSmall: TextStyle(
    fontSize: MaterialDesign3TypoToken.labelSmall.size,
  ),
  bodyLarge: TextStyle(
    fontSize: MaterialDesign3TypoToken.bodyLarge.size,
  ),
  bodyMedium: TextStyle(
    fontSize: MaterialDesign3TypoToken.bodyMedium.size,
  ),
  bodySmall: TextStyle(
    fontSize: MaterialDesign3TypoToken.bodySmall.size,
  ),
);

enum MaterialDesign3TypoToken {
  /// size: 57
  /// height: 64
  /// letterSpacing: 0
  /// weight: 400
  /// Same as MeteerailDesign2 headline1
  displayLarge(57, 64, 0, FontWeight.w400),

  /// size: 45
  /// height: 52
  /// letterSpacing: 0
  /// weight: 400
  /// Same as MeteerailDesign2 headline2
  displayMedium(45, 52, 0, FontWeight.w400),

  /// size: 36
  /// height: 44
  /// letterSpacing: 0
  /// weight: 400
  /// /// Same as MeteerailDesign2 headline3
  displaySmall(36, 44, 0, FontWeight.w400),

  /// size: 32
  /// height: 40
  /// letterSpacing: 0
  /// weight: 400
  headlineLarge(32, 40, 0, FontWeight.w400),

  /// size: 28
  /// height: 36
  /// letterSpacing: 0
  /// weight: 400
  /// Same as MeteerailDesign2 headline4
  headlineMedium(28, 36, 0, FontWeight.w400),

  /// size: 24
  /// height: 32
  /// letterSpacing: 0
  /// weight: 400
  /// Same as MeteerailDesign2 headline5
  headlineSmall(24, 32, 0, FontWeight.w400),

  /// size: 22
  /// height: 28
  /// letterSpacing: 0
  /// weight: 400
  /// Same as MeteerailDesign2 headline6
  titleLarge(22, 28, 0, FontWeight.w400),

  /// size: 16
  /// height: 24
  /// letterSpacing: 0.15
  /// weight: 500
  /// Same as MeteerailDesign2 subtitle1
  titleMedium(16, 24, 0.15, FontWeight.w500),

  /// size: 14
  /// height: 20
  /// letterSpacing: 0.1
  /// weight: 500
  /// Same as MeteerailDesign2 subtitle2
  titleSmall(14, 20, 0.1, FontWeight.w500),

  /// size: 14
  /// height: 20
  /// letterSpacing: 0.1
  /// weight: 500
  /// Same as MeteerailDesign2 button
  labelLarge(14, 20, 0.1, FontWeight.w500),

  /// size: 12
  /// height: 16
  /// letterSpacing: 0.5
  /// weight: 500
  labelMedium(12, 16, 0.5, FontWeight.w500),

  /// size: 11
  /// height: 16
  /// letterSpacing: 0.5
  /// weight: 500
  /// Same as MeteerailDesign2 overline
  labelSmall(11, 16, 0.5, FontWeight.w500),

  /// size: 16
  /// height: 24
  /// letterSpacing: 0.15
  /// weight: 400
  /// Same as MeteerailDesign2 bodytext1
  bodyLarge(16, 24, 0.15, FontWeight.w400),

  /// size: 14
  /// height: 20
  /// letterSpacing: 0.25
  /// weight: 400
  /// Same as MeteerailDesign2 bodytext2
  bodyMedium(14, 20, 0.25, FontWeight.w400),

  /// size: 12
  /// height: 16
  /// letterSpacing: 0.4
  /// weight: 400
  /// Same as MeteerailDesign2 caption
  bodySmall(12, 16, 0.4, FontWeight.w400);

  final double size;
  final double heightPx;
  final double letterSpacing;
  final FontWeight weight;

  const MaterialDesign3TypoToken(
    this.size,
    this.heightPx,
    this.letterSpacing,
    this.weight,
  );
}

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle? h1;
  final TextStyle? h2;
  final TextStyle? h3;
  final TextStyle? h4;
  final TextStyle? h5;
  final TextStyle? p1;
  final TextStyle? p2;
  final TextStyle? label1;
  final TextStyle? label2;
  final AppTypoTokens? spec;

  const AppTextTheme({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.p1,
    required this.p2,
    required this.label1,
    required this.label2,
    this.spec,
  }) : super();

  @override
  AppTextTheme copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? p1,
    TextStyle? p2,
    TextStyle? label1,
    TextStyle? label2,
  }) {
    return AppTextTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      p1: p1 ?? this.p1,
      p2: p2 ?? this.p2,
      label1: label1 ?? this.label1,
      label2: label2 ?? this.label2,
    );
  }

  /// Linearly interpolate between two text themes.
  ///
  /// {@macro dart.ui.shadow.lerp}
  @override
  AppTextTheme lerp(ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }
    return AppTextTheme(
      h1: TextStyle.lerp(h1, other.h1, t),
      h2: TextStyle.lerp(h2, other.h2, t),
      h3: TextStyle.lerp(h3, other.h3, t),
      h4: TextStyle.lerp(h4, other.h4, t),
      h5: TextStyle.lerp(h5, other.h5, t),
      p1: TextStyle.lerp(p1, other.p1, t),
      p2: TextStyle.lerp(p2, other.p2, t),
      label1: TextStyle.lerp(label1, other.label1, t),
      label2: TextStyle.lerp(label2, other.label2, t),
    );
  }
}

final appTextTheme = AppTextTheme(
  h1: TextStyle(
    fontFamily: AppTypoTokens.h1.fontFamily,
    fontSize: AppTypoTokens.h1.size,
    // height: AppTypoTokens.h1.height,
    // letterSpacing: AppTypoTokens.h1.letterSpacing,
    fontWeight: AppTypoTokens.h1.weight,
  ),
  h2: TextStyle(
    fontFamily: AppTypoTokens.h2.fontFamily,
    fontSize: AppTypoTokens.h2.size,
    // height: AppTypoTokens.h2.height,
    // letterSpacing: AppTypoTokens.h2.letterSpacing,
    fontWeight: AppTypoTokens.h2.weight,
  ),
  h3: TextStyle(
    fontFamily: AppTypoTokens.h3.fontFamily,
    fontSize: AppTypoTokens.h3.size,
    // height: AppTypoTokens.h3.height,
    // letterSpacing: AppTypoTokens.h3.letterSpacing,
    fontWeight: AppTypoTokens.h3.weight,
  ),
  h4: TextStyle(
    fontFamily: AppTypoTokens.h4.fontFamily,
    fontSize: AppTypoTokens.h4.size,
    // height: AppTypoTokens.h4.height,
    // letterSpacing: AppTypoTokens.h4.letterSpacing,
    fontWeight: AppTypoTokens.h4.weight,
  ),
  h5: TextStyle(
    fontFamily: AppTypoTokens.h5.fontFamily,
    fontSize: AppTypoTokens.h5.size,
    // height: AppTypoTokens.h5.height,
    // letterSpacing: AppTypoTokens.h5.letterSpacing,
    fontWeight: AppTypoTokens.h5.weight,
  ),
  p1: TextStyle(
    // fontFamily: 'Roboto',
    fontFamily: AppTypoTokens.p1.fontFamily,
    fontSize: AppTypoTokens.p1.size,
    height: AppTypoTokens.p1.heightPx / AppTypoTokens.p1.size,
    // letterSpacing: AppTypoTokens.p.letterSpacing,
    fontWeight: AppTypoTokens.p1.weight,
  ),
  p2: TextStyle(
    fontFamily: AppTypoTokens.p2.fontFamily,
    fontSize: AppTypoTokens.p1.size,
    height: AppTypoTokens.p1.heightPx / AppTypoTokens.p1.size,
    // letterSpacing: AppTypoTokens.p.letterSpacing,
    fontWeight: AppTypoTokens.p1.weight,
  ),
  label1: TextStyle(
    fontFamily: AppTypoTokens.label1.fontFamily,
    fontSize: AppTypoTokens.label1.size,
    height: AppTypoTokens.label1.heightPx / AppTypoTokens.label1.size,
    // letterSpacing: AppTypoTokens.p.letterSpacing,
    fontWeight: AppTypoTokens.label1.weight,
  ),
  label2: TextStyle(
    fontFamily: AppTypoTokens.label2.fontFamily,
    fontSize: AppTypoTokens.label2.size,
    height: AppTypoTokens.label2.heightPx / AppTypoTokens.label2.size,
    // letterSpacing: AppTypoTokens.p.letterSpacing,
    fontWeight: AppTypoTokens.label2.weight,
  ),
);

enum AppTypoTokens {
  h1(32, 38, 0, FontWeight.w900, 'Vitro'),
  h2(24, 36, 0, FontWeight.w900, 'Vitro'),
  h3(20, 31, 0, FontWeight.w900, 'Vitro'),
  h4(18, 24, 0, FontWeight.w700, 'Inter'),
  h5(14, 21, 0, FontWeight.w700, 'Inter'),
  p1(14, 24, 0, FontWeight.w400, 'Roboto'),
  p2(15, 24, 0, FontWeight.w400, 'Inter'),
  label1(11, 16, 0.5, FontWeight.w400, 'Inter'),
  label2(13, 16, 0.5, FontWeight.w400, 'Inter');

  final double size;
  final double heightPx;
  final double letterSpacing;
  final FontWeight weight;
  final String fontFamily;

  const AppTypoTokens(
    this.size,
    this.heightPx,
    this.letterSpacing,
    this.weight,
    this.fontFamily,
  );
}
