// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_box_money_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RowBoxMoneyStore = BindInject(
  (i) => RowBoxMoneyStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RowBoxMoneyStore on _RowBoxMoneyStoreBase, Store {
  final _$earningsAmountAtom =
      Atom(name: '_RowBoxMoneyStoreBase.earningsAmount');

  @override
  double get earningsAmount {
    _$earningsAmountAtom.reportRead();
    return super.earningsAmount;
  }

  @override
  set earningsAmount(double value) {
    _$earningsAmountAtom.reportWrite(value, super.earningsAmount, () {
      super.earningsAmount = value;
    });
  }

  final _$expenseAmountAtom = Atom(name: '_RowBoxMoneyStoreBase.expenseAmount');

  @override
  double get expenseAmount {
    _$expenseAmountAtom.reportRead();
    return super.expenseAmount;
  }

  @override
  set expenseAmount(double value) {
    _$expenseAmountAtom.reportWrite(value, super.expenseAmount, () {
      super.expenseAmount = value;
    });
  }

  final _$_RowBoxMoneyStoreBaseActionController =
      ActionController(name: '_RowBoxMoneyStoreBase');

  @override
  void getValueTransactions(
      {required List<TransactionModel> listTransactions}) {
    final _$actionInfo = _$_RowBoxMoneyStoreBaseActionController.startAction(
        name: '_RowBoxMoneyStoreBase.getValueTransactions');
    try {
      return super.getValueTransactions(listTransactions: listTransactions);
    } finally {
      _$_RowBoxMoneyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
earningsAmount: ${earningsAmount},
expenseAmount: ${expenseAmount}
    ''';
  }
}
