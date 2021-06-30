// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_details_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BankAccountDetailsStore = BindInject(
  (i) => BankAccountDetailsStore(i<BankAccountDetailsRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BankAccountDetailsStore on _BankAccountDetailsStoreBase, Store {
  final _$transactionsListAtom =
      Atom(name: '_BankAccountDetailsStoreBase.transactionsList');

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

  final _$getTransactionsAsyncAction =
      AsyncAction('_BankAccountDetailsStoreBase.getTransactions');

  @override
  Future getTransactions({required String bankAccountId}) {
    return _$getTransactionsAsyncAction
        .run(() => super.getTransactions(bankAccountId: bankAccountId));
  }

  final _$deleteTransactionAsyncAction =
      AsyncAction('_BankAccountDetailsStoreBase.deleteTransaction');

  @override
  Future deleteTransaction(
      {required String transanctionId, required String bankAccountId}) {
    return _$deleteTransactionAsyncAction.run(() => super.deleteTransaction(
        transanctionId: transanctionId, bankAccountId: bankAccountId));
  }

  @override
  String toString() {
    return '''
transactionsList: ${transactionsList}
    ''';
  }
}
