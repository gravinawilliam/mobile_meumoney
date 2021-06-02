// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_edit_bank_account_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreateEditBankAccountStore = BindInject(
  (i) => CreateEditBankAccountStore(i<ICreateEditAccountRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateEditBankAccountStore on _CreateEditBankAccountStoreBase, Store {
  Computed<CreateBankAccountModel>? _$createBankAccountCredentialComputed;

  @override
  CreateBankAccountModel get createBankAccountCredential =>
      (_$createBankAccountCredentialComputed ??= Computed<
                  CreateBankAccountModel>(
              () => super.createBankAccountCredential,
              name:
                  '_CreateEditBankAccountStoreBase.createBankAccountCredential'))
          .value;

  final _$userAtom = Atom(name: '_CreateEditBankAccountStoreBase.user');

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

  final _$accountValueTextEditingControllerAtom = Atom(
      name:
          '_CreateEditBankAccountStoreBase.accountValueTextEditingController');

  @override
  TextEditingController get accountValueTextEditingController {
    _$accountValueTextEditingControllerAtom.reportRead();
    return super.accountValueTextEditingController;
  }

  @override
  set accountValueTextEditingController(TextEditingController value) {
    _$accountValueTextEditingControllerAtom
        .reportWrite(value, super.accountValueTextEditingController, () {
      super.accountValueTextEditingController = value;
    });
  }

  final _$redCardColorAtom =
      Atom(name: '_CreateEditBankAccountStoreBase.redCardColor');

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
      Atom(name: '_CreateEditBankAccountStoreBase.greenCardColor');

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
      Atom(name: '_CreateEditBankAccountStoreBase.blueCardColor');

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
      Atom(name: '_CreateEditBankAccountStoreBase.logoUrlBank');

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

  final _$symbolCoinAtom =
      Atom(name: '_CreateEditBankAccountStoreBase.symbolCoin');

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

  final _$balanceAtom = Atom(name: '_CreateEditBankAccountStoreBase.balance');

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
      Atom(name: '_CreateEditBankAccountStoreBase.accountNumbers');

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
      Atom(name: '_CreateEditBankAccountStoreBase.cardholderName');

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
      Atom(name: '_CreateEditBankAccountStoreBase.monthValidity');

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
      Atom(name: '_CreateEditBankAccountStoreBase.yearValidity');

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

  final _$bankIdAtom = Atom(name: '_CreateEditBankAccountStoreBase.bankId');

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

  final _$buttonControllerAtom =
      Atom(name: '_CreateEditBankAccountStoreBase.buttonController');

  @override
  RoundedLoadingButtonController get buttonController {
    _$buttonControllerAtom.reportRead();
    return super.buttonController;
  }

  @override
  set buttonController(RoundedLoadingButtonController value) {
    _$buttonControllerAtom.reportWrite(value, super.buttonController, () {
      super.buttonController = value;
    });
  }

  final _$createBankAccountAsyncAction =
      AsyncAction('_CreateEditBankAccountStoreBase.createBankAccount');

  @override
  Future<void> createBankAccount() {
    return _$createBankAccountAsyncAction.run(() => super.createBankAccount());
  }

  @override
  String toString() {
    return '''
user: ${user},
accountValueTextEditingController: ${accountValueTextEditingController},
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
buttonController: ${buttonController},
createBankAccountCredential: ${createBankAccountCredential}
    ''';
  }
}
