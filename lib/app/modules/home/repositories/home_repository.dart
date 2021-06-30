import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/models/all_models/exchange_model.dart';
import '../../../shared/models/models.dart';
import '../interfaces/home_repository_interface.dart';
import '../models/response_get_gains_expenses_model.dart';

part 'home_repository.g.dart';

@Injectable()
class HomeRepository implements IHomeRepository {
  final Dio _dio;

  HomeRepository(
    this._dio,
  );

  @override
  Future<ResponseGetGainsExpenseModel> getGainsExpense() async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        ApiRoutersConst.getGainsExpenses,
        queryParameters: {
          "bankAccountId": "7b1748c2-ca4e-4f55-86bb-b21fb341febc",
          "month": "06",
          "year": "2021"
        },
      );
      var result = ResponseGetGainsExpenseModel.fromMap(response.data);
      return result;
    } on DioError catch (error) {
      print(error);
      return ResponseGetGainsExpenseModel(earningsAmount: 0, expenseAmount: 0);
    }
  }

  @override
  Future<List<ExchangeModel>> getExchanges() async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        ApiRoutersConst.getCoins,
      );
      var result = (response.data as List)
          .map(
            (e) => ExchangeModel.fromMap(e),
          )
          .toList();
      return result;
    } on DioError catch (error) {
      print(error);
      return <ExchangeModel>[];
    }
  }

  @override
  Future<List<TransactionModel>> getTransactionsByMonthYear({
    required int month,
    required int year,
  }) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        ApiRoutersConst.getTransactionsByMonth,
        queryParameters: {"month": month.toString(), "year": year.toString()},
      );
      var result = (response.data as List)
          .map(
            (e) => TransactionModel.fromMap(e),
          )
          .toList();
      return result;
    } on DioError catch (error) {
      print(error);
      return <TransactionModel>[];
    }
  }
}
