import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: avoid_classes_with_only_static_members
class ThemesConst {
  static ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
    ),
    brightness: Brightness.dark,
    primaryColor: DarkColorsConst.primary,
    scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
    accentColor: DarkColorsConst.accent,
    fontFamily: FontsConst.regular,
  );

  static InputDecoration authenticateTextFormField = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      horizontal: SizeConst.paddingHorizontal,
    ),
    hintStyle: TextStyle(
      color: Colors.white.withOpacity(0.3),
      fontSize: 16,
      fontFamily: FontsConst.regular,
    ),
  );
}
