import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../shared/constants/constants.dart';
import '../../transactions_store.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends ModularState<Calendar, TransactionsStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
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
        onDaySelected: (_selectedDay, _focusedDay) => store.onDaySelected(
          _selectedDay,
          _focusedDay,
        ),
        selectedDayPredicate: (date) => store.selectedDayPredicate(date),
        firstDay: DateTime(2018),
        lastDay: DateTime(2030),
        focusedDay: store.selectedDay,
      ),
    );
  }
}
