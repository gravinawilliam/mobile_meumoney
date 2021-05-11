import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ButtonTab extends StatelessWidget {
  final String title;
  final bool isSelect;
  final Function() onTap;

  const ButtonTab({
    required this.title,
    required this.isSelect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return GestureDetector(
      onTap: isSelect ? null : onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 4,
              color: isSelect
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            color: isSelect ? DarkColorsConst.textPrimary : Colors.grey,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: FontsConst.regular,
          ),
        ),
      ),
    );
  }
}
