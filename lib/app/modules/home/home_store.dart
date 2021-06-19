import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/all_models/exchange_model.dart';
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
    getExchanges();
    getTransactions();
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

  @observable
  List<ExchangeModel> exchangesList = ObservableList<ExchangeModel>();

  @observable
  List<TransactionModel> transactionsList = ObservableList<TransactionModel>();

  @action
  void exchangeVisibility() => valuesVisible = !valuesVisible;

  @action
  getGainsExpenses() async {
    ResponseGetGainsExpenseModel response = await repository.getGainsExpense();
    gainsMonth = response.earningsAmount;
    expensesMonth = response.expenseAmount;
  }

  @action
  getExchanges() async {
    List<ExchangeModel> response = await repository.getExchanges();
    print(response);
    exchangesList = response;
  }

  @action
  getTransactions() async {
    List<TransactionModel> response = await repository.getTransactions();
    transactionsList = response;
  }

  @action
  void setSymbolCoin(int index) {
    switch (index) {
      case 0:
        //dolar
        exchangesList[index].symbol = "\$";
        exchangesList[index].name = "Dólar";
        break;
      case 1:
        //euro
        exchangesList[index].symbol = "\€";
        break;
      case 2:
        //bitcoin
        exchangesList[index].symbol = "\₿";
        break;
      case 3:
        //renminbi moeda chinesa
        break;
      case 4:
        //yen japones
        exchangesList[index].symbol = "\¥";
        exchangesList[index].name = "Yen japonês";
        break;
      case 5:
        // dolar australiano
        exchangesList[index].symbol = "\$";
        exchangesList[index].name = "Dólar australiano";
        break;
      case 6:
        // dolar canadense
        exchangesList[index].symbol = "\$";
        exchangesList[index].name = "Dólar canadense";
        break;
      case 7:
        //peso argentino
        exchangesList[index].symbol = "\$";
        exchangesList[index].name = "Peso argentino";
        break;
      case 8:
        //libra esterlina
        exchangesList[index].symbol = "\£";
        exchangesList[index].name = "Libra esterlina";
        break;
      default:
    }
  }
}
