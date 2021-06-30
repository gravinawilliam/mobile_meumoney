import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../constants/constants.dart';
import '../../../models/models.dart';
import '../../widgets_globais.dart';
import '../box_money/box_money_widget.dart';
import 'row_box_money_store.dart';

class RowBoxMoney extends StatefulWidget {
  final List<TransactionModel> transactionsList;
  final String symbolCoin;
  final bool valuesVisible;

  const RowBoxMoney({
    this.symbolCoin = "BRL",
    required this.transactionsList,
    required this.valuesVisible,
  });

  @override
  _RowBoxMoneyState createState() => _RowBoxMoneyState();
}

class _RowBoxMoneyState extends ModularState<RowBoxMoney, RowBoxMoneyStore> {
  @override
  Widget build(BuildContext context) {
    store.getValueTransactions(listTransactions: widget.transactionsList);
    SizeConst().init(context);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BoxMoneyWidget(
            icon: EvaIcons.arrowIosUpward,
            title: "Ganhos",
            symbolCoin: widget.symbolCoin,
            value: store.earningsAmount,
            color: DarkColorsConst.ganhos,
            valuesVisible: widget.valuesVisible,
          ),
          BoxMoneyWidget(
            icon: EvaIcons.arrowIosDownward,
            title: "Despesas",
            symbolCoin: widget.symbolCoin,
            value: store.expenseAmount,
            color: DarkColorsConst.despesas,
            valuesVisible: widget.valuesVisible,
          ),
        ],
      ),
    );
  }
}
