import 'package:flutter/material.dart';

class SizeConst {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0;
  static double screenWidthWithMargin = 0;
  static double screenHeight = 0;
  static double paddingHorizontal = 0;
  static double paddingVertical = 0;
  static double statusBar = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    statusBar = _mediaQueryData.padding.top;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height - statusBar;
    paddingHorizontal = screenWidth * 0.06;
    paddingVertical = screenHeight * 0.025;
    screenWidthWithMargin =
        _mediaQueryData.size.width - (2 * paddingHorizontal);
  }
}
