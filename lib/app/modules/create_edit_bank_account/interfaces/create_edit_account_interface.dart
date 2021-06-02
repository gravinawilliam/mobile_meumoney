import 'package:dartz/dartz.dart';
import 'package:mobile_meumoney/app/modules/create_edit_bank_account/models/create_bank_account_model.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/all_models/bank_account_model.dart';

abstract class ICreateEditAccountRepository {
  Future<Either<FailureDio, BankAccountModel>> createBankAccount(
    CreateBankAccountModel createBankAccount,
  );
}
