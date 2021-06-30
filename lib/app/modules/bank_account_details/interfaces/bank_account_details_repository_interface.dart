import '../../../shared/models/models.dart';

abstract class IBankAccountDetailsRepository {
  Future<List<TransactionModel>> getTransactionsByBankAccountId({
    required String bankAccountId,
  });
  Future<bool> deleteTransaction({
    required String transactionId,
  });
}
