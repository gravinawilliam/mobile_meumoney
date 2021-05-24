import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/models/models.dart';
import 'package:mobx/mobx.dart';
part 'row_box_money_store.g.dart';

@Injectable(singleton: false)
class RowBoxMoneyStore = _RowBoxMoneyStoreBase with _$RowBoxMoneyStore;

abstract class _RowBoxMoneyStoreBase with Store {
  @observable
  double earningsAmount = 0;

  @observable
  double expenseAmount = 0;

  @action
  void getValueTransactions({
    required List<TransactionModel> listTransactions,
  }) {
    earningsAmount = 0;
    expenseAmount = 0;
    for (var index = 0; index < listTransactions.length; index++) {
      switch (listTransactions[index].transactionType) {
        case 'gain':
          earningsAmount += listTransactions[index].value;
          break;
        case 'expense':
          expenseAmount += listTransactions[index].value;
          break;
        default:
      }
    }
  }
}
