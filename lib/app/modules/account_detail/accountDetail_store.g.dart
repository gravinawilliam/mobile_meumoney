// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accountDetail_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AccountDetailStore = BindInject(
  (i) => AccountDetailStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountDetailStore on _AccountDetailStoreBase, Store {
  final _$valueAtom = Atom(name: '_AccountDetailStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_AccountDetailStoreBaseActionController =
      ActionController(name: '_AccountDetailStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_AccountDetailStoreBaseActionController.startAction(
        name: '_AccountDetailStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AccountDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
