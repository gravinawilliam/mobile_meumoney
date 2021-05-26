import 'package:flutter/material.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/subtitle_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/widgets_globais.dart';

class WeekDayWidget extends StatefulWidget {
  @override
  _WeekDayWidgetState createState() => _WeekDayWidgetState();
}

class _WeekDayWidgetState extends State<WeekDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DarkColorsConst.primary,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeConst.paddingVertical * 0.1,
        horizontal: SizeConst.paddingHorizontal * 0.4,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Text(
              "S",
              style: TextStyle(
                fontSize: 12,
                fontFamily: FontsConst.regular,
              ),
            ),
            Text(
              "01",
              style: TextStyle(
                fontSize: 15,
                fontFamily: FontsConst.semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
