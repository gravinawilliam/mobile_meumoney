import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/all_widgets/row_box_money/row_box_money_widget.dart';
import '../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'home_store.dart';
import 'widgets/home_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: Observer(
        builder: (_) => ScrollBody(
          hasMargin: false,
          children: [
            HeaderHome(
              user: store.user,
            ),
            SlideCardsWidget(
              valuesVisible: store.valuesVisible,
              bankAccouts: store.bankAccouts ?? [],
            ),
            Container(
              width: SizeConst.screenWidthWithMargin,
              child: Column(
                children: [
                  SubtitleWidget(
                    hasMarginHorizontal: false,
                    alignment: Alignment.center,
                    subTitle: "Maio de 2021",
                    fontSize: 16,
                  ),
                  RowBoxMoney(
                    symbolCoin: "BRL",
                    listTransactions: [
                      TransactionModel(
                        date: "2021-12-22",
                        fromBankAccountId: "id",
                        id: "id",
                        note: "a",
                        symbolCoin: "BRl",
                        title: "Com",
                        transactionType: "gain",
                        userId: "id",
                        value: 10000.50,
                      ),
                      TransactionModel(
                        date: "2021-12-22",
                        fromBankAccountId: "id",
                        id: "id",
                        note: "a",
                        symbolCoin: "BRl",
                        title: "Com",
                        transactionType: "expense",
                        userId: "id",
                        value: 2000.50,
                      ),
                      TransactionModel(
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
                      TransactionModel(
                        date: "2021-12-22",
                        fromBankAccountId: "id",
                        id: "id",
                        note: "a",
                        symbolCoin: "BRl",
                        title: "Com",
                        transactionType: "expense",
                        userId: "id",
                        value: 333.50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SubtitleWidget(
              subTitle: "Transações",
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
