import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/models/all_models/bank_model.dart';

import '../interfaces/edit_bank_account_repository_interface.dart';

part 'edit_bank_account_repository.g.dart';

@Injectable()
class EditBankAccountRepository implements IEditBankAccountRepository {
  final Dio _dio;

  EditBankAccountRepository(this._dio);

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
}
