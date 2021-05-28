// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TransactionsStore = BindInject(
  (i) => TransactionsStore(i<ITransactionsRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TransactionsStore on _TransactionsStoreBase, Store {
  final _$transactionsListAtom =
      Atom(name: '_TransactionsStoreBase.transactionsList');

  @override
  List<TransactionModel>? get transactionsList {
    _$transactionsListAtom.reportRead();
    return super.transactionsList;
  }

  @override
  set transactionsList(List<TransactionModel>? value) {
    _$transactionsListAtom.reportWrite(value, super.transactionsList, () {
      super.transactionsList = value;
    });
  }

  final _$selectedDayAtom = Atom(name: '_TransactionsStoreBase.selectedDay');

  @override
  DateTime get selectedDay {
    _$selectedDayAtom.reportRead();
    return super.selectedDay;
  }

  @override
  set selectedDay(DateTime value) {
    _$selectedDayAtom.reportWrite(value, super.selectedDay, () {
      super.selectedDay = value;
    });
  }

  final _$focusedDayAtom = Atom(name: '_TransactionsStoreBase.focusedDay');

  @override
  DateTime get focusedDay {
    _$focusedDayAtom.reportRead();
    return super.focusedDay;
  }

  @override
  set focusedDay(DateTime value) {
    _$focusedDayAtom.reportWrite(value, super.focusedDay, () {
      super.focusedDay = value;
    });
  }

  final _$getTransactionsAsyncAction =
      AsyncAction('_TransactionsStoreBase.getTransactions');

  @override
  Future getTransactions({required String date}) {
    return _$getTransactionsAsyncAction
        .run(() => super.getTransactions(date: date));
  }

  final _$_TransactionsStoreBaseActionController =
      ActionController(name: '_TransactionsStoreBase');

  @override
  void onDaySelected(dynamic _selectedDay, dynamic _focusedDay) {
    final _$actionInfo = _$_TransactionsStoreBaseActionController.startAction(
        name: '_TransactionsStoreBase.onDaySelected');
    try {
      return super.onDaySelected(_selectedDay, _focusedDay);
    } finally {
      _$_TransactionsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool selectedDayPredicate(dynamic date) {
    final _$actionInfo = _$_TransactionsStoreBaseActionController.startAction(
        name: '_TransactionsStoreBase.selectedDayPredicate');
    try {
      return super.selectedDayPredicate(date);
    } finally {
      _$_TransactionsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transactionsList: ${transactionsList},
selectedDay: ${selectedDay},
focusedDay: ${focusedDay}
    ''';
  }
}
