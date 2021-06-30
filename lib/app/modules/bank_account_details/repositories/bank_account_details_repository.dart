import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/models/models.dart';
import '../interfaces/bank_account_details_repository_interface.dart';

part 'bank_account_details_repository.g.dart';

@Injectable()
class BankAccountDetailsRepository implements IBankAccountDetailsRepository {
  final Dio _dio;

  BankAccountDetailsRepository(
    this._dio,
  );

  @override
  Future<List<TransactionModel>> getTransactionsByBankAccountId({
    required String bankAccountId,
  }) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        "${ApiRoutersConst.getTransactionsByBankAccountId}$bankAccountId",
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

  @override
  Future<bool> deleteTransaction({
    required String transactionId,
  }) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.delete(
        "${ApiRoutersConst.deleteTransaction}$transactionId",
      );
      return response.statusCode == 200 ? true : false;
    } on DioError catch (error) {
      print(error);
      return false;
    }
  }
}
