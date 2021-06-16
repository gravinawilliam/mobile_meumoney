import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';
import '../interfaces/create_bank_account_repository_interface.dart';
import '../models/create_bank_account_model.dart';

part 'create_bank_account_repository.g.dart';

@Injectable()
class CreateBankAccountRepository implements ICreateBankAccountRepository {
  final Dio _dio;

  CreateBankAccountRepository(
    this._dio,
  );

  @override
  Future<List<BankModel>> getBanks() async {
    try {
      var response = await _dio.get(
        ApiRoutersConst.getBanks,
      );
      var result = (response.data as List)
          .map(
            (e) => BankModel.fromMap(e),
          )
          .toList();
      return result;
    } on DioError catch (error) {
      print(error);
      return <BankModel>[];
    }
  }

  @override
  Future<Either<FailureDio, BankAccountModel>> createBankAccount(
    CreateBankAccountModel createBankAccount,
  ) async {
    try {
      var response = await _dio.post(
        ApiRoutersConst.createBankAccount,
        data: {
          "accountNumbers": createBankAccount.accountNumbers,
          "balance": createBankAccount.balance,
          "cardholderName": createBankAccount.cardHolderName,
          "monthValidity": createBankAccount.monthValidity,
          "yearValidity": createBankAccount.yearValidity,
          "symbolCoin": createBankAccount.symbolCoin,
          "bankId": createBankAccount.bankId
        },
      );
      var result = BankAccountModel.fromMap(response.data);
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

//   @override
//   Future<Either<FailureDio, BankAccountModel>> createBankAccount(
//       CreateBankAccountModel createBankAccount) async {

// }
