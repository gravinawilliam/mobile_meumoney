import 'package:asuka/asuka.dart' as asuka;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/constants/constants.dart';
import '../../shared/errors/errors.dart';
import '../../shared/models/all_models/transaction_model.dart';
import '../../shared/models/models.dart';
import 'interfaces/transactions_repository_interface.dart';

part 'transactions_store.g.dart';

@Injectable(singleton: false)
class TransactionsStore = _TransactionsStoreBase with _$TransactionsStore;

abstract class _TransactionsStoreBase with Store {
  final ITransactionsRepository repository;

  _TransactionsStoreBase(this.repository) {
    getTransactions(
      date: '${selectedDay.year}-${selectedDay.month}-${selectedDay.day}',
    );
  }

  @observable
  List<TransactionModel>? transactionsList = ObservableList<TransactionModel>();

  @observable
  DateTime selectedDay = DateTime.now();

  @observable
  DateTime focusedDay = DateTime.now();

  @action
  void onDaySelected(_selectedDay, _focusedDay) {
    selectedDay = _selectedDay;
    focusedDay = _focusedDay;
    getTransactions(
      date: '${selectedDay.year}-${selectedDay.month}-${selectedDay.day}',
    );
  }

  @action
  getTransactions({required String date}) async {
    Either<FailureDio, List<TransactionModel>?> response =
        await repository.getTransactionsByDateUserId(
      date: date,
    );
    response.fold(
      (failure) {},
      (response) {
        transactionsList = response;
      },
    );
  }

  @action
  deleteTransaction({
    required String transanctionId,
    required String date,
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
      getTransactions(date: date);
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

  @action
  bool selectedDayPredicate(date) => isSameDay(selectedDay, date);
}
