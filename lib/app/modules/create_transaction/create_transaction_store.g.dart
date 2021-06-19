// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreateTransactionStore = BindInject(
  (i) => CreateTransactionStore(i<ICreateTransactionRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateTransactionStore on _CreateTransactionStoreBase, Store {
  Computed<RequestCreateTransactionModel>? _$credentialComputed;

  @override
  RequestCreateTransactionModel get credential => (_$credentialComputed ??=
          Computed<RequestCreateTransactionModel>(() => super.credential,
              name: '_CreateTransactionStoreBase.credential'))
      .value;

  final _$userAtom = Atom(name: '_CreateTransactionStoreBase.user');

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

  final _$selectedDateAtom =
      Atom(name: '_CreateTransactionStoreBase.selectedDate');

  @override
  DateTime get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  final _$dateControllerAtom =
      Atom(name: '_CreateTransactionStoreBase.dateController');

  @override
  DatePickerController get dateController {
    _$dateControllerAtom.reportRead();
    return super.dateController;
  }

  @override
  set dateController(DatePickerController value) {
    _$dateControllerAtom.reportWrite(value, super.dateController, () {
      super.dateController = value;
    });
  }

  final _$valueTransactionAtom =
      Atom(name: '_CreateTransactionStoreBase.valueTransaction');

  @override
  double get valueTransaction {
    _$valueTransactionAtom.reportRead();
    return super.valueTransaction;
  }

  @override
  set valueTransaction(double value) {
    _$valueTransactionAtom.reportWrite(value, super.valueTransaction, () {
      super.valueTransaction = value;
    });
  }

  final _$titleAtom = Atom(name: '_CreateTransactionStoreBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$noteAtom = Atom(name: '_CreateTransactionStoreBase.note');

  @override
  String get note {
    _$noteAtom.reportRead();
    return super.note;
  }

  @override
  set note(String value) {
    _$noteAtom.reportWrite(value, super.note, () {
      super.note = value;
    });
  }

  final _$currentIndexSliderAtom =
      Atom(name: '_CreateTransactionStoreBase.currentIndexSlider');

  @override
  int get currentIndexSlider {
    _$currentIndexSliderAtom.reportRead();
    return super.currentIndexSlider;
  }

  @override
  set currentIndexSlider(int value) {
    _$currentIndexSliderAtom.reportWrite(value, super.currentIndexSlider, () {
      super.currentIndexSlider = value;
    });
  }

  final _$selectedIndexTransactionTypeAtom =
      Atom(name: '_CreateTransactionStoreBase.selectedIndexTransactionType');

  @override
  int get selectedIndexTransactionType {
    _$selectedIndexTransactionTypeAtom.reportRead();
    return super.selectedIndexTransactionType;
  }

  @override
  set selectedIndexTransactionType(int value) {
    _$selectedIndexTransactionTypeAtom
        .reportWrite(value, super.selectedIndexTransactionType, () {
      super.selectedIndexTransactionType = value;
    });
  }

  final _$buttonControllerAtom =
      Atom(name: '_CreateTransactionStoreBase.buttonController');

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

  final _$createTransactionAsyncAction =
      AsyncAction('_CreateTransactionStoreBase.createTransaction');

  @override
  Future<void> createTransaction() {
    return _$createTransactionAsyncAction.run(() => super.createTransaction());
  }

  final _$_CreateTransactionStoreBaseActionController =
      ActionController(name: '_CreateTransactionStoreBase');

  @override
  void setValueTransaction(String value) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.setValueTransaction');
    try {
      return super.setValueTransaction(value);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime value) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNote(String value) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.setNote');
    try {
      return super.setNote(value);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTransactionType(int value) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.setTransactionType');
    try {
      return super.setTransactionType(value);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changedCard({required int index}) {
    final _$actionInfo = _$_CreateTransactionStoreBaseActionController
        .startAction(name: '_CreateTransactionStoreBase.changedCard');
    try {
      return super.changedCard(index: index);
    } finally {
      _$_CreateTransactionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
selectedDate: ${selectedDate},
dateController: ${dateController},
valueTransaction: ${valueTransaction},
title: ${title},
note: ${note},
currentIndexSlider: ${currentIndexSlider},
selectedIndexTransactionType: ${selectedIndexTransactionType},
buttonController: ${buttonController},
credential: ${credential}
    ''';
  }
}
