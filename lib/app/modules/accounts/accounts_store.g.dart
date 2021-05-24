// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AccountsStore = BindInject(
  (i) => AccountsStore(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountsStore on _AccountsStoreBase, Store {
  final _$userAtom = Atom(name: '_AccountsStoreBase.user');

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

  final _$currentIndexSliderAtom =
      Atom(name: '_AccountsStoreBase.currentIndexSlider');

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

  final _$valuesVisibleAtom = Atom(name: '_AccountsStoreBase.valuesVisible');

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

  final _$_AccountsStoreBaseActionController =
      ActionController(name: '_AccountsStoreBase');

  @override
  void changedCard({required int index}) {
    final _$actionInfo = _$_AccountsStoreBaseActionController.startAction(
        name: '_AccountsStoreBase.changedCard');
    try {
      return super.changedCard(index: index);
    } finally {
      _$_AccountsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void exchangeVisibility() {
    final _$actionInfo = _$_AccountsStoreBaseActionController.startAction(
        name: '_AccountsStoreBase.exchangeVisibility');
    try {
      return super.exchangeVisibility();
    } finally {
      _$_AccountsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
currentIndexSlider: ${currentIndexSlider},
valuesVisible: ${valuesVisible}
    ''';
  }
}
