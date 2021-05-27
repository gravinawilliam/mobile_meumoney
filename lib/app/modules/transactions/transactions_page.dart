import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/widgets_globais.dart';
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
          Observer(
              builder: (_) => Container(
                    color: DarkColorsConst.accent,
                    child: TableCalendar(
                      locale: "pt-br",
                      calendarFormat: CalendarFormat.week,
                      rowHeight: SizeConst.paddingVertical * 2,
                      calendarStyle: CalendarStyle(
                        isTodayHighlighted: true,
                        defaultTextStyle: TextStyle(
                          fontSize: 14,
                        ),
                        selectedDecoration: BoxDecoration(
                          color: DarkColorsConst.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      daysOfWeekHeight: SizeConst.paddingHorizontal * 1.5,
                      onDaySelected: (_selectedDay, _focusedDay) =>
                          store.onDaySelected(
                        _selectedDay,
                        _focusedDay,
                      ),
                      selectedDayPredicate: (date) =>
                          store.selectedDayPredicate(date),
                      firstDay: DateTime(2018),
                      lastDay: DateTime(2030),
                      focusedDay: store.selectedDay,
                    ),
                  )),
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
