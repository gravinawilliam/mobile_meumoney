import 'package:dartz/dartz.dart';

import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';
import '../models/create_bank_account_model.dart';

abstract class ICreateBankAccountRepository {
  Future<Either<FailureDio, BankAccountModel>> createBankAccount(
    CreateBankAccountModel createBankAccount,
  );
  Future<List<BankModel>> getBanks();
}
