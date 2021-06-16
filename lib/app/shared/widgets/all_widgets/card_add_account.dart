import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../constants/constants.dart';

class CardAddAccount extends StatelessWidget {
  final double sizeHeightCard;

  const CardAddAccount({
    required this.sizeHeightCard,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
      ),
      width: SizeConst.screenWidthWithMargin,
      alignment: Alignment.center,
      height: sizeHeightCard,
      decoration: BoxDecoration(
        color: DarkColorsConst.accent,
        borderRadius: BorderRadius.circular(
          SizeConst.paddingHorizontal,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 32,
            icon: Icon(
              EvaIcons.plusSquareOutline,
            ),
            onPressed: () => Modular.to.pushNamed(
              AppRoutersConst.createBankAccount,
            ),
          ),
          Text(
            "Adicionar Conta de banco",
          ),
        ],
      ),
    );
  }
}
