import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/models/models.dart';

import '../../../constants/constants.dart';
import 'box_money_store.dart';

class BoxMoneyWidget extends StatefulWidget {
  final Color color;
  final String title;
  final double value;
  final String symbolCoin;
  final IconData icon;

  const BoxMoneyWidget({
    required this.color,
    required this.title,
    required this.value,
    required this.symbolCoin,
    required this.icon,
  });
  @override
  _BoxMoneyWidgetState createState() => _BoxMoneyWidgetState();
}

class _BoxMoneyWidgetState extends ModularState<BoxMoneyWidget, BoxMoneyStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      height: SizeConst.screenHeight / 10,
      width: SizeConst.screenWidth / 2.5,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(
            SizeConst.paddingHorizontal * 0.5,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: SizeConst.screenWidth * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  widget.icon,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: DarkColorsConst.textSecundary,
                    fontFamily: FontsConst.regular,
                  ),
                ),
              ],
            ),
          ),
          AutoSizeText(
            controller.getbalance(
              balance: widget.value,
              symbolCoin: widget.symbolCoin,
            ),
            style: TextStyle(
              fontSize: 15,
              color: DarkColorsConst.textSecundary,
              fontFamily: FontsConst.bold,
              letterSpacing: 1.5,
            ),
            maxLines: 1,
            minFontSize: 6,
          ),
        ],
      ),
    );
  }
}
