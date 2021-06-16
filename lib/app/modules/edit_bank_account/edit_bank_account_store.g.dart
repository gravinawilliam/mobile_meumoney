// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_bank_account_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EditBankAccountStore = BindInject(
  (i) => EditBankAccountStore(i<IEditBankAccountRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditBankAccountStore on _EditBankAccountStoreBase, Store {
  final _$banksListAtom = Atom(name: '_EditBankAccountStoreBase.banksList');

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

  final _$getBanksAsyncAction =
      AsyncAction('_EditBankAccountStoreBase.getBanks');

  @override
  Future getBanks() {
    return _$getBanksAsyncAction.run(() => super.getBanks());
  }

  @override
  String toString() {
    return '''
banksList: ${banksList}
    ''';
  }
}
