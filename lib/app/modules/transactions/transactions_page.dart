import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
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
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: TransactionItem(
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
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: Colors.blue,
                    icon: Icons.archive,
                    onTap: () => {},
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    onTap: () => {},
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    onTap: () => {},
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
