// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreditCardStore = BindInject(
  (i) => CreditCardStore(i<IMoneyService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreditCardStore on _CreditCardStoreBase, Store {
  final _$_CreditCardStoreBaseActionController =
      ActionController(name: '_CreditCardStoreBase');

  @override
  String getbalance({required double balance, required CoinModel coin}) {
    final _$actionInfo = _$_CreditCardStoreBaseActionController.startAction(
        name: '_CreditCardStoreBase.getbalance');
    try {
      return super.getbalance(balance: balance, coin: coin);
    } finally {
      _$_CreditCardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
