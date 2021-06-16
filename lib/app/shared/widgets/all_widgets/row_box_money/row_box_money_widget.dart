import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../constants/constants.dart';
import '../../widgets_globais.dart';
import '../box_money/box_money_widget.dart';
import 'row_box_money_store.dart';

class RowBoxMoney extends StatefulWidget {
  final double gainsMonth;
  final double expensesMonth;
  final String symbolCoin;

  const RowBoxMoney({
    required this.expensesMonth,
    required this.gainsMonth,
    this.symbolCoin = "BRL",
  });

  @override
  _RowBoxMoneyState createState() => _RowBoxMoneyState();
}

class _RowBoxMoneyState extends ModularState<RowBoxMoney, RowBoxMoneyStore> {
  @override
  Widget build(BuildContext context) {
    // store.getValueTransactions(
    //   listTransactions: widget.listTransactions,
    // );
    SizeConst().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxMoneyWidget(
          icon: EvaIcons.arrowIosUpward,
          title: "Ganhos",
          symbolCoin: widget.symbolCoin,
          value: widget.gainsMonth,
          color: DarkColorsConst.ganhos,
        ),
        BoxMoneyWidget(
          icon: EvaIcons.arrowIosDownward,
          title: "Despesas",
          symbolCoin: widget.symbolCoin,
          value: widget.expensesMonth,
          color: DarkColorsConst.despesas,
        ),
      ],
    );
  }
}
