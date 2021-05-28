import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
      body: ScrollBody(
        hasMargin: false,
        children: [
          HeaderHome(
            user: store.user,
          ),
          IndexedStack(
            index: store.user.bankAccounts.isEmpty ? 0 : 1,
            children: [
              Container(
                width: SizeConst.screenWidthWithMargin,
                height: SizeConst.screenHeight * 0.22,
                decoration: BoxDecoration(
                  color: DarkColorsConst.saldoGeral.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(
                    SizeConst.paddingHorizontal * 0.5,
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
                      onPressed: () {},
                    ),
                    Text(
                      "Adicionar Conta de banco",
                    ),
                  ],
                ),
              ),
              Observer(
                builder: (_) => SlideCardsWidget(
                  valuesVisible: store.valuesVisible,
                  bankAccouts: store.user.bankAccounts,
                ),
              ),
            ],
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
    );
  }
}
