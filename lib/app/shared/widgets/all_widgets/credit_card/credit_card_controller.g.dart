// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreditCardController = BindInject(
  (i) => CreditCardController(i<IMoneyService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreditCardController on _CreditCardControllerBase, Store {
  final _$_CreditCardControllerBaseActionController =
      ActionController(name: '_CreditCardControllerBase');

  @override
  String getbalance({required double balance, required String symbolCoin}) {
    final _$actionInfo = _$_CreditCardControllerBaseActionController
        .startAction(name: '_CreditCardControllerBase.getbalance');
    try {
      return super.getbalance(balance: balance, symbolCoin: symbolCoin);
    } finally {
      _$_CreditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
