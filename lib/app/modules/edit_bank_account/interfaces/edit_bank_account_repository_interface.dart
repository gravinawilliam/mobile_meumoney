import '../../../shared/models/models.dart';

abstract class IEditBankAccountRepository {
  Future<List<BankModel>> getBanks();
}
