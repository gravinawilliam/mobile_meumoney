// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeStore = BindInject(
  (i) => HomeStore(i<IHomeRepository>(), i<IMoneyService>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$currentMonthAtom = Atom(name: '_HomeStoreBase.currentMonth');

  @override
  int get currentMonth {
    _$currentMonthAtom.reportRead();
    return super.currentMonth;
  }

  @override
  set currentMonth(int value) {
    _$currentMonthAtom.reportWrite(value, super.currentMonth, () {
      super.currentMonth = value;
    });
  }

  final _$currentYearAtom = Atom(name: '_HomeStoreBase.currentYear');

  @override
  int get currentYear {
    _$currentYearAtom.reportRead();
    return super.currentYear;
  }

  @override
  set currentYear(int value) {
    _$currentYearAtom.reportWrite(value, super.currentYear, () {
      super.currentYear = value;
    });
  }

  final _$userAtom = Atom(name: '_HomeStoreBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$gainsMonthAtom = Atom(name: '_HomeStoreBase.gainsMonth');

  @override
  double get gainsMonth {
    _$gainsMonthAtom.reportRead();
    return super.gainsMonth;
  }

  @override
  set gainsMonth(double value) {
    _$gainsMonthAtom.reportWrite(value, super.gainsMonth, () {
      super.gainsMonth = value;
    });
  }

  final _$expensesMonthAtom = Atom(name: '_HomeStoreBase.expensesMonth');

  @override
  double get expensesMonth {
    _$expensesMonthAtom.reportRead();
    return super.expensesMonth;
  }

  @override
  set expensesMonth(double value) {
    _$expensesMonthAtom.reportWrite(value, super.expensesMonth, () {
      super.expensesMonth = value;
    });
  }

  final _$bankAccoutsAtom = Atom(name: '_HomeStoreBase.bankAccouts');

  @override
  List<BankAccountModel>? get bankAccouts {
    _$bankAccoutsAtom.reportRead();
    return super.bankAccouts;
  }

  @override
  set bankAccouts(List<BankAccountModel>? value) {
    _$bankAccoutsAtom.reportWrite(value, super.bankAccouts, () {
      super.bankAccouts = value;
    });
  }

  final _$valuesVisibleAtom = Atom(name: '_HomeStoreBase.valuesVisible');

  @override
  bool get valuesVisible {
    _$valuesVisibleAtom.reportRead();
    return super.valuesVisible;
  }

  @override
  set valuesVisible(bool value) {
    _$valuesVisibleAtom.reportWrite(value, super.valuesVisible, () {
      super.valuesVisible = value;
    });
  }

  final _$exchangesListAtom = Atom(name: '_HomeStoreBase.exchangesList');

  @override
  List<ExchangeModel> get exchangesList {
    _$exchangesListAtom.reportRead();
    return super.exchangesList;
  }

  @override
  set exchangesList(List<ExchangeModel> value) {
    _$exchangesListAtom.reportWrite(value, super.exchangesList, () {
      super.exchangesList = value;
    });
  }

  final _$transactionsListAtom = Atom(name: '_HomeStoreBase.transactionsList');

  @override
  List<TransactionModel> get transactionsList {
    _$transactionsListAtom.reportRead();
    return super.transactionsList;
  }

  @override
  set transactionsList(List<TransactionModel> value) {
    _$transactionsListAtom.reportWrite(value, super.transactionsList, () {
      super.transactionsList = value;
    });
  }

  final _$getExchangesAsyncAction = AsyncAction('_HomeStoreBase.getExchanges');

  @override
  Future getExchanges() {
    return _$getExchangesAsyncAction.run(() => super.getExchanges());
  }

  final _$getTransactionsAsyncAction =
      AsyncAction('_HomeStoreBase.getTransactions');

  @override
  Future getTransactions() {
    return _$getTransactionsAsyncAction.run(() => super.getTransactions());
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  String getbalance({required double balance, required String symbolCoin}) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.getbalance');
    try {
      return super.getbalance(balance: balance, symbolCoin: symbolCoin);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void exchangeVisibility() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.exchangeVisibility');
    try {
      return super.exchangeVisibility();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSymbolCoin(int index) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setSymbolCoin');
    try {
      return super.setSymbolCoin(index);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentMonth: ${currentMonth},
currentYear: ${currentYear},
user: ${user},
gainsMonth: ${gainsMonth},
expensesMonth: ${expensesMonth},
bankAccouts: ${bankAccouts},
valuesVisible: ${valuesVisible},
exchangesList: ${exchangesList},
transactionsList: ${transactionsList}
    ''';
  }
}
