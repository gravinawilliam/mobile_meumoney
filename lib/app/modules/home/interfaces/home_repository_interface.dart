import 'package:mobile_meumoney/app/shared/models/all_models/transaction_model.dart';

import '../../../shared/models/all_models/exchange_model.dart';

import '../models/response_get_gains_expenses_model.dart';

abstract class IHomeRepository {
  Future<ResponseGetGainsExpenseModel> getGainsExpense();
  Future<List<ExchangeModel>> getExchanges();
  Future<List<TransactionModel>> getTransactions();
}
