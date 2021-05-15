import 'package:flutter/material.dart';
import '../../constants/all_constants/colors_const.dart';
import '../../constants/all_constants/fonts_const.dart';

class ButtonTab extends StatelessWidget {
  final double fontSize;
  final bool isSelect;
  final void Function() onTap;
  final String title;

  const ButtonTab({
    required this.title,
    required this.isSelect,
    required this.onTap,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: isSelect ? null : onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3,
                color: isSelect
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
              ),
            ),
          ),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              color: isSelect ? DarkColorsConst.textPrimary : Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: FontsConst.regular,
            ),
          ),
        ),
      );
}
