import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'transactions_store.dart';
import 'widgets/transaction_widgets.dart';

class TransactionsPage extends StatefulWidget {
  @override
  TransactionsPageState createState() => TransactionsPageState();
}

class TransactionsPageState
    extends ModularState<TransactionsPage, TransactionsStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: Observer(
        builder: (_) => ScrollBody(
          hasMargin: false,
          children: [
            Calendar(),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: store.transactionsList == null
                  ? 0
                  : store.transactionsList!.length,
              itemBuilder: (context, index) {
                var transaction = store.transactionsList![index];
                return TransactionItem(
                  length: store.transactionsList == null
                      ? 0
                      : store.transactionsList!.length,
                  index: index,
                  transaction: transaction,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
