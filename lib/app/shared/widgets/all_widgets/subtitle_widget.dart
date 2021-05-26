import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SubtitleWidget extends StatelessWidget {
  final String subTitle;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final bool hasMarginHorizontal;
  final bool hasMarginVertical;

  const SubtitleWidget({
    required this.subTitle,
    this.alignment = Alignment.center,
    this.hasMarginHorizontal = true,
    this.hasMarginVertical = true,
    this.fontFamily = FontsConst.regular,
    this.fontSize = 14,
    this.color = DarkColorsConst.textSecundary,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: hasMarginHorizontal ? SizeConst.paddingHorizontal : 0,
          vertical: hasMarginVertical ? SizeConst.paddingVertical : 0,
        ),
        alignment: alignment,
        child: Text(
          subTitle,
          style: TextStyle(
            fontFamily: fontFamily,
            color: color,
            fontSize: fontSize,
          ),
        ),
      );
}
