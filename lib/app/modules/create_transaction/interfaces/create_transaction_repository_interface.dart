import 'package:dartz/dartz.dart';

import '../../../shared/errors/errors.dart';
import '../../../shared/models/all_models/notification_model.dart';
import '../../../shared/models/all_models/transaction_model.dart';
import '../models/request_create_transaction_model.dart';

abstract class ICreateTransactionRepository {
  Future<Either<Failure, TransactionModel>> createTransaction(
    RequestCreateTransactionModel createTransactionModel,
  );
  Future<NotificationModel?> getNotification();
}
