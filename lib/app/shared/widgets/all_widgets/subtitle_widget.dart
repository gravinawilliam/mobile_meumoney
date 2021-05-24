import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SubtitleWidget extends StatelessWidget {
  final String subTitle;
  final Alignment alignment;
  final bool hasMarginHorizontal;
  const SubtitleWidget({
    required this.subTitle,
    this.alignment = Alignment.center,
    this.hasMarginHorizontal = true,
  });
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: hasMarginHorizontal ? SizeConst.paddingHorizontal : 0,
          vertical: SizeConst.paddingVertical,
        ),
        alignment: alignment,
        child: Text(
          subTitle,
          style: TextStyle(
            fontFamily: FontsConst.medium,
            color: DarkColorsConst.textSecundary,
            fontSize: 16,
          ),
        ),
      );
}
