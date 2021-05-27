import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/scroll_body.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/all_models/transaction_model.dart';
import 'transactions_store.dart';
import 'widgets/all_widgets/transaction_item.dart';

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
      body: ScrollBody(
        hasMargin: false,
        children: [
          Container(
            child: Calendar(
              startOnMonday: true,
              weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
              events: null,
              selectedColor: DarkColorsConst.primary,
              todayColor: DarkColorsConst.accent,
              locale: "pt-br",
              expandableDateFormat: 'EEEE, dd. MMMM yyyy',
              dayOfWeekStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 11),
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => TransactionItem(
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
            ),
          ),
        ],
      ),
    );
  }
}
