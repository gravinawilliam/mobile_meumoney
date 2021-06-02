import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:table_calendar/table_calendar.dart';

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
            Container(
              color: DarkColorsConst.accent,
              child: TableCalendar(
                startingDayOfWeek: StartingDayOfWeek.sunday,
                locale: "PT-BR",
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  rightChevronIcon: Icon(
                    EvaIcons.arrowRight,
                  ),
                  titleTextStyle: TextStyle(
                    fontFamily: FontsConst.medium,
                  ),
                ),
                calendarFormat: CalendarFormat.week,
                rowHeight: SizeConst.paddingVertical * 2,
                calendarStyle: CalendarStyle(
                  defaultTextStyle: TextStyle(
                    fontSize: 14,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: DarkColorsConst.primary,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: DarkColorsConst.backgroundScaffold.withOpacity(
                      0.9,
                    ),
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
            ),
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
