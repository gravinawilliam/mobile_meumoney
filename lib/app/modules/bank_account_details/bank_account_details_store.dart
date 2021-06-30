import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import 'repositories/bank_account_details_repository.dart';

part 'bank_account_details_store.g.dart';

@Injectable(singleton: false)
class BankAccountDetailsStore = _BankAccountDetailsStoreBase
    with _$BankAccountDetailsStore;

abstract class _BankAccountDetailsStoreBase with Store {
//   final BankAccountModel? bankAccountModel;

//   _BankAccountDetailsStoreBase(this.bankAccountModel);
  final BankAccountDetailsRepository repository;

  _BankAccountDetailsStoreBase(this.repository);

  @observable
  List<TransactionModel> transactionsList = ObservableList<TransactionModel>();

  @action
  getTransactions({
    required String bankAccountId,
  }) async {
    transactionsList = [];
    List<TransactionModel> response =
        await repository.getTransactionsByBankAccountId(
      bankAccountId: bankAccountId,
    );
    transactionsList = response;
  }

  @action
  deleteTransaction({
    required String transanctionId,
    required String bankAccountId,
  }) async {
    bool response = await repository.deleteTransaction(
      transactionId: transanctionId,
    );
    if (response) {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: Colors.greenAccent,
          content: Text(
            "Transação deletada",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.accent,
              fontSize: 16,
              fontFamily: FontsConst.semiBold,
            ),
          ),
        ),
      );
      getTransactions(bankAccountId: bankAccountId);
    } else {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(
            "Erro ao excluir a transação",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.accent,
              fontSize: 16,
              fontFamily: FontsConst.semiBold,
            ),
          ),
        ),
      );
    }
  }
}
