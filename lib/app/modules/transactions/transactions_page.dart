import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/transactions/widgets/all_widgets/transaction_item.dart';
import 'package:mobile_meumoney/app/shared/models/all_models/transaction_model.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'transactions_store.dart';

class TransactionsPage extends StatefulWidget {
  @override
  TransactionsPageState createState() => TransactionsPageState();
}

class TransactionsPageState
    extends ModularState<TransactionsPage, TransactionsStore> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            SizeConst().init(context);
            return TransactionItem(
              length: 10 - 1,
              index: index,
              transaction: TransactionModel(
                date: "2021-12-22",
                fromBankAccountId: "id",
                id: "id",
                note: "a",
                symbolCoin: "BRl",
                title: "Com",
                transactionType: "gain",
                userId: "id",
                value: 35000.50,
              ),
            );
          },
        ),
      );
}
