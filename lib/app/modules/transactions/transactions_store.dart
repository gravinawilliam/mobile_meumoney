import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:table_calendar/table_calendar.dart';

part 'transactions_store.g.dart';

@Injectable(singleton: false)
class TransactionsStore = _TransactionsStoreBase with _$TransactionsStore;

abstract class _TransactionsStoreBase with Store {
  @observable
  DateTime selectedDay = DateTime.now();

  @observable
  DateTime focusedDay = DateTime.now();

  @action
  void onDaySelected(_selectedDay, _focusedDay) {
    selectedDay = _selectedDay;
    focusedDay = _focusedDay;
  }

  @action
  bool selectedDayPredicate(date) => isSameDay(selectedDay, date);
}
