import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';
import '../interfaces/create_transaction_repository_interface.dart';
import '../models/request_create_transaction_model.dart';

part 'create_transaction_repository.g.dart';

@Injectable()
class CreateTransactionRepository implements ICreateTransactionRepository {
  final Dio _dio;

  CreateTransactionRepository(
    this._dio,
  );
  @override
  Future<Either<Failure, TransactionModel>> createTransaction(
    RequestCreateTransactionModel createTransactionModel,
  ) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.post(
        ApiRoutersConst.createTransaction,
        data: {
          "note": createTransactionModel.note,
          "title": createTransactionModel.title,
          "transactionType": createTransactionModel.transactionType,
          "value": createTransactionModel.value,
          "date": createTransactionModel.date,
          "symbolCoin": createTransactionModel.symbolCoin,
          "fromBankAccountId": createTransactionModel.fromBankAccount
        },
      );
      var result = TransactionModel.fromMap(response.data);
      return Right(result);
    } on DioError catch (error) {
      print(error);
      return Left(
        FailureDio(
          message: error.response!.data,
          statusCode: error.response!.statusCode!,
        ),
      );
    }
  }

  @override
  Future<NotificationModel?> getNotification() async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        ApiRoutersConst.getNotificationBenford,
      );
      var result = NotificationModel.fromMap(response.data);
      return result;
    } on DioError catch (error) {
      print(error);
    }
  }
}
