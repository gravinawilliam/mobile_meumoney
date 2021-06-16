import '../models/response_get_gains_expenses_model.dart';

abstract class IHomeRepository {
  Future<ResponseGetGainsExpenseModel> getGainsExpense();
}
