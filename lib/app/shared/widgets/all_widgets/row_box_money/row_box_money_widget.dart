import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/models/models.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/row_box_money/row_box_money_store.dart';
import '../../../constants/constants.dart';
import '../box_money/box_money_widget.dart';

class RowBoxMoney extends StatefulWidget {
  final List<TransactionModel> listTransactions;
  final String symbolCoin;

  const RowBoxMoney({
    required this.listTransactions,
    required this.symbolCoin,
  });

  @override
  _RowBoxMoneyState createState() => _RowBoxMoneyState();
}

class _RowBoxMoneyState extends ModularState<RowBoxMoney, RowBoxMoneyStore> {
  @override
  Widget build(BuildContext context) {
    store.getValueTransactions(
      listTransactions: widget.listTransactions,
    );

    SizeConst().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxMoneyWidget(
          title: "Ganhos",
          symbolCoin: widget.symbolCoin,
          value: store.earningsAmount,
          color: DarkColorsConst.ganhosGerais,
        ),
        BoxMoneyWidget(
          title: "Despesas",
          symbolCoin: widget.symbolCoin,
          value: store.expenseAmount,
          color: DarkColorsConst.despesasGerais,
        ),
      ],
    );
  }
}
