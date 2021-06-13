import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/all_models/bank_account_model.dart';
import '../interfaces/create_edit_bank_account_interface.dart';
import '../models/create_bank_account_model.dart';

part 'create_edit_account_repository.g.dart';

@Injectable()
class CreateEditAccountRepository implements ICreateEditAccountRepository {
  final Dio _dio;

  CreateEditAccountRepository(
    this._dio,
  );

  @override
  Future<Either<FailureDio, BankAccountModel>> createBankAccount(
      CreateBankAccountModel createBankAccount) async {
    try {
      var response = await _dio.post(ApiRoutersConst.createBankAccount, data: {
        "accountNumbers": createBankAccount.accountNumbers,
        "balance": createBankAccount.balance,
        "cardholderName": createBankAccount.cardHolderName,
        "montValidity": createBankAccount.montValidity,
        "yearValidity": createBankAccount.yearValidity,
        "symbolCoin": createBankAccount.symbolCoin,
      });
      var result = BankAccountModel.fromMap(response.data);
      return Right(result);
    } on DioError catch (error) {
      return Left(
        FailureDio(
          message: error.response!.data,
          statusCode: error.response!.statusCode!,
        ),
      );
    }
  }
}
