import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';
import '../interfaces/transactions_repository_interface.dart';

part 'transactions_repository.g.dart';

@Injectable()
class TransactionsRepository implements ITransactionsRepository {
  final Dio _dio;

  TransactionsRepository(this._dio);

  @override
  Future<Either<FailureDio, List<TransactionModel>>>
      getTransactionsByDateUserId({
    required String date,
  }) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer ${UserModel.token}";
      var response = await _dio.get(
        ApiRoutersConst.getTransactionsByDateUserId,
        queryParameters: {
          "date": date,
        },
      );
      var result = (response.data as List)
          .map((e) => TransactionModel.fromMap(e))
          .toList();
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
