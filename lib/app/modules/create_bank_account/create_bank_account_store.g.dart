// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bank_account_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreateBankAccountStore = BindInject(
  (i) => CreateBankAccountStore(
      i<IMoneyService>(), i<ICreateBankAccountRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateBankAccountStore on _CreateBankAccountStoreBase, Store {
  Computed<CreateBankAccountModel>? _$credentialComputed;

  @override
  CreateBankAccountModel get credential => (_$credentialComputed ??=
          Computed<CreateBankAccountModel>(() => super.credential,
              name: '_CreateBankAccountStoreBase.credential'))
      .value;

  final _$selectedIndexBankAtom =
      Atom(name: '_CreateBankAccountStoreBase.selectedIndexBank');

  @override
  int? get selectedIndexBank {
    _$selectedIndexBankAtom.reportRead();
    return super.selectedIndexBank;
  }

  @override
  set selectedIndexBank(int? value) {
    _$selectedIndexBankAtom.reportWrite(value, super.selectedIndexBank, () {
      super.selectedIndexBank = value;
    });
  }

  final _$enableTextFormFieldAtom =
      Atom(name: '_CreateBankAccountStoreBase.enableTextFormField');

  @override
  bool get enableTextFormField {
    _$enableTextFormFieldAtom.reportRead();
    return super.enableTextFormField;
  }

  @override
  set enableTextFormField(bool value) {
    _$enableTextFormFieldAtom.reportWrite(value, super.enableTextFormField, () {
      super.enableTextFormField = value;
    });
  }

  final _$redCardColorAtom =
      Atom(name: '_CreateBankAccountStoreBase.redCardColor');

  @override
  int get redCardColor {
    _$redCardColorAtom.reportRead();
    return super.redCardColor;
  }

  @override
  set redCardColor(int value) {
    _$redCardColorAtom.reportWrite(value, super.redCardColor, () {
      super.redCardColor = value;
    });
  }

  final _$greenCardColorAtom =
      Atom(name: '_CreateBankAccountStoreBase.greenCardColor');

  @override
  int get greenCardColor {
    _$greenCardColorAtom.reportRead();
    return super.greenCardColor;
  }

  @override
  set greenCardColor(int value) {
    _$greenCardColorAtom.reportWrite(value, super.greenCardColor, () {
      super.greenCardColor = value;
    });
  }

  final _$blueCardColorAtom =
      Atom(name: '_CreateBankAccountStoreBase.blueCardColor');

  @override
  int get blueCardColor {
    _$blueCardColorAtom.reportRead();
    return super.blueCardColor;
  }

  @override
  set blueCardColor(int value) {
    _$blueCardColorAtom.reportWrite(value, super.blueCardColor, () {
      super.blueCardColor = value;
    });
  }

  final _$logoUrlBankAtom =
      Atom(name: '_CreateBankAccountStoreBase.logoUrlBank');

  @override
  String get logoUrlBank {
    _$logoUrlBankAtom.reportRead();
    return super.logoUrlBank;
  }

  @override
  set logoUrlBank(String value) {
    _$logoUrlBankAtom.reportWrite(value, super.logoUrlBank, () {
      super.logoUrlBank = value;
    });
  }

  final _$symbolCoinAtom = Atom(name: '_CreateBankAccountStoreBase.symbolCoin');

  @override
  String get symbolCoin {
    _$symbolCoinAtom.reportRead();
    return super.symbolCoin;
  }

  @override
  set symbolCoin(String value) {
    _$symbolCoinAtom.reportWrite(value, super.symbolCoin, () {
      super.symbolCoin = value;
    });
  }

  final _$balanceAtom = Atom(name: '_CreateBankAccountStoreBase.balance');

  @override
  double get balance {
    _$balanceAtom.reportRead();
    return super.balance;
  }

  @override
  set balance(double value) {
    _$balanceAtom.reportWrite(value, super.balance, () {
      super.balance = value;
    });
  }

  final _$accountNumbersAtom =
      Atom(name: '_CreateBankAccountStoreBase.accountNumbers');

  @override
  String get accountNumbers {
    _$accountNumbersAtom.reportRead();
    return super.accountNumbers;
  }

  @override
  set accountNumbers(String value) {
    _$accountNumbersAtom.reportWrite(value, super.accountNumbers, () {
      super.accountNumbers = value;
    });
  }

  final _$cardholderNameAtom =
      Atom(name: '_CreateBankAccountStoreBase.cardholderName');

  @override
  String get cardholderName {
    _$cardholderNameAtom.reportRead();
    return super.cardholderName;
  }

  @override
  set cardholderName(String value) {
    _$cardholderNameAtom.reportWrite(value, super.cardholderName, () {
      super.cardholderName = value;
    });
  }

  final _$monthValidityAtom =
      Atom(name: '_CreateBankAccountStoreBase.monthValidity');

  @override
  int get monthValidity {
    _$monthValidityAtom.reportRead();
    return super.monthValidity;
  }

  @override
  set monthValidity(int value) {
    _$monthValidityAtom.reportWrite(value, super.monthValidity, () {
      super.monthValidity = value;
    });
  }

  final _$yearValidityAtom =
      Atom(name: '_CreateBankAccountStoreBase.yearValidity');

  @override
  int get yearValidity {
    _$yearValidityAtom.reportRead();
    return super.yearValidity;
  }

  @override
  set yearValidity(int value) {
    _$yearValidityAtom.reportWrite(value, super.yearValidity, () {
      super.yearValidity = value;
    });
  }

  final _$bankIdAtom = Atom(name: '_CreateBankAccountStoreBase.bankId');

  @override
  String get bankId {
    _$bankIdAtom.reportRead();
    return super.bankId;
  }

  @override
  set bankId(String value) {
    _$bankIdAtom.reportWrite(value, super.bankId, () {
      super.bankId = value;
    });
  }

  final _$banksListAtom = Atom(name: '_CreateBankAccountStoreBase.banksList');

  @override
  List<BankModel> get banksList {
    _$banksListAtom.reportRead();
    return super.banksList;
  }

  @override
  set banksList(List<BankModel> value) {
    _$banksListAtom.reportWrite(value, super.banksList, () {
      super.banksList = value;
    });
  }

  final _$btnControllerAtom =
      Atom(name: '_CreateBankAccountStoreBase.btnController');

  @override
  RoundedLoadingButtonController get btnController {
    _$btnControllerAtom.reportRead();
    return super.btnController;
  }

  @override
  set btnController(RoundedLoadingButtonController value) {
    _$btnControllerAtom.reportWrite(value, super.btnController, () {
      super.btnController = value;
    });
  }

  final _$getBanksAsyncAction =
      AsyncAction('_CreateBankAccountStoreBase.getBanks');

  @override
  Future getBanks() {
    return _$getBanksAsyncAction.run(() => super.getBanks());
  }

  final _$createBankAccountAsyncAction =
      AsyncAction('_CreateBankAccountStoreBase.createBankAccount');

  @override
  Future<void> createBankAccount() {
    return _$createBankAccountAsyncAction.run(() => super.createBankAccount());
  }

  final _$_CreateBankAccountStoreBaseActionController =
      ActionController(name: '_CreateBankAccountStoreBase');

  @override
  void setBalance(String value) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setBalance');
    try {
      return super.setBalance(value);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAccountNumbers(String value) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setAccountNumbers');
    try {
      return super.setAccountNumbers(value);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardHolderName(String value) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setCardHolderName');
    try {
      return super.setCardHolderName(value);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMonthValidity(String value) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setMonthValidity');
    try {
      return super.setMonthValidity(value);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setYearValidity(String value) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setYearValidity');
    try {
      return super.setYearValidity(value);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getbalance({required double balance, required String symbolCoin}) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.getbalance');
    try {
      return super.getbalance(balance: balance, symbolCoin: symbolCoin);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBank(int index) {
    final _$actionInfo = _$_CreateBankAccountStoreBaseActionController
        .startAction(name: '_CreateBankAccountStoreBase.setBank');
    try {
      return super.setBank(index);
    } finally {
      _$_CreateBankAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndexBank: ${selectedIndexBank},
enableTextFormField: ${enableTextFormField},
redCardColor: ${redCardColor},
greenCardColor: ${greenCardColor},
blueCardColor: ${blueCardColor},
logoUrlBank: ${logoUrlBank},
symbolCoin: ${symbolCoin},
balance: ${balance},
accountNumbers: ${accountNumbers},
cardholderName: ${cardholderName},
monthValidity: ${monthValidity},
yearValidity: ${yearValidity},
bankId: ${bankId},
banksList: ${banksList},
btnController: ${btnController},
credential: ${credential}
    ''';
  }
}
