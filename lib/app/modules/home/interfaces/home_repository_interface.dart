import '../../../shared/models/models.dart';

import '../models/response_get_gains_expenses_model.dart';

abstract class IHomeRepository {
  Future<ResponseGetGainsExpenseModel> getGainsExpense();
  Future<List<ExchangeModel>> getExchanges();
  Future<List<TransactionModel>> getTransactionsByMonthYear({
    required int month,
    required int year,
  });
}
