import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';
import 'interfaces/home_repository_interface.dart';
import 'models/response_get_gains_expenses_model.dart';

part 'home_store.g.dart';

@Injectable(singleton: false)
class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final IHomeRepository repository;

  _HomeStoreBase(
    this.repository,
  ) {
    getGainsExpenses();
  }

  @observable
  UserModel user = UserModel.user!;

  @observable
  double gainsMonth = 0;

  @observable
  double expensesMonth = 0;

  @observable
  List<BankAccountModel>? bankAccouts = UserModel.bankAccounts;

  @observable
  bool valuesVisible = true;

  @action
  void exchangeVisibility() => valuesVisible = !valuesVisible;

  @action
  getGainsExpenses() async {
    ResponseGetGainsExpenseModel response = await repository.getGainsExpense();
    gainsMonth = response.earningsAmount;
    expensesMonth = response.expenseAmount;
  }
}
