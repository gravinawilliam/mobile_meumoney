// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeStore = BindInject(
  (i) => HomeStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
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

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

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
  String toString() {
    return '''
user: ${user},
bankAccouts: ${bankAccouts},
valuesVisible: ${valuesVisible}
    ''';
  }
}
