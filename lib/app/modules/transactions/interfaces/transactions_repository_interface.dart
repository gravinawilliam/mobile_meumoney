import 'package:dartz/dartz.dart';

import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';

abstract class ITransactionsRepository {
  Future<Either<FailureDio, List<TransactionModel>?>>
      getTransactionsByDateUserId({
    required String date,
  });
  Future<bool> deleteTransaction({
    required String transactionId,
  });
}
