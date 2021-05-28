import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:loading_indicator/loading_indicator.dart';
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
  ScrollController _scrollController = ScrollController();
  int _currentMax = 10;
  List list = [];
  @override
  void initState() {
    list = List.generate(10, (index) => "item $index");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreList();
      }
    });
    super.initState();
  }

  _getMoreList() {
    for (var i = _currentMax; i < _currentMax + 10; i++) {
      list.add("item $i");
    }
    _currentMax += 10;
  }

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
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              controller: _scrollController,
              itemBuilder: (context, index) {
                if (index == list.length) {
                  return LoadingIndicator(indicatorType: Indicator.ballBeat);
                }
                return Text(index.toString());
              },
            )

            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: 10,
            //   itemBuilder: (context, index) => Slidable(
            //     actionPane: SlidableDrawerActionPane(),
            //     actionExtentRatio: 0.25,
            //     child: TransactionItem(
            //       length: 10 - 1,
            //       index: index,
            //       transaction: TransactionModel(
            //         date: "2021-12-22",
            //         fromBankAccountId: "id",
            //         id: "id",
            //         note: "a",
            //         symbolCoin: "BRl",
            //         title: "Com",
            //         transactionType: "gain",
            //         userId: "id",
            //         value: 35000.50,
            //       ),
            //     ),
            //     actions: <Widget>[
            //       IconSlideAction(
            //         caption: 'Archive',
            //         color: Colors.blue,
            //         icon: Icons.archive,
            //         onTap: () => {},
            //       ),
            //       IconSlideAction(
            //         caption: 'Share',
            //         color: Colors.indigo,
            //         icon: Icons.share,
            //         onTap: () => {},
            //       ),
            //     ],
            //     secondaryActions: <Widget>[
            //       IconSlideAction(
            //         caption: 'More',
            //         color: Colors.black45,
            //         icon: Icons.more_horiz,
            //         onTap: () => {},
            //       ),
            //       IconSlideAction(
            //         caption: 'Delete',
            //         color: Colors.red,
            //         icon: Icons.delete,
            //         onTap: () => {},
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
