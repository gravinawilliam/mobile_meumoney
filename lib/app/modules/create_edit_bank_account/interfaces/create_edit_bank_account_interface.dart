import 'package:dartz/dartz.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/all_models/bank_account_model.dart';
import '../models/create_bank_account_model.dart';

abstract class ICreateEditAccountRepository {
  Future<Either<FailureDio, BankAccountModel>> createBankAccount(
    CreateBankAccountModel createBankAccount,
  );
}
