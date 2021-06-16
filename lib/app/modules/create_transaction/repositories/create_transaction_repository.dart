import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';

import '../interfaces/create_transaction_repository_interface.dart';
import '../models/request_create_transaction_model.dart';

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
}
