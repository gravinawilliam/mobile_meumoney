import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/interfaces/services/money_service_interface.dart';
import '../../shared/models/all_models/exchange_model.dart';
import '../../shared/models/models.dart';
import 'interfaces/home_repository_interface.dart';

part 'home_store.g.dart';

@Injectable(singleton: false)
class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final IHomeRepository repository;

  final IMoneyService moneyService;

  _HomeStoreBase(
    this.repository,
    this.moneyService,
  ) {
    getExchanges();
    getTransactions();
  }

  @action
  String getbalance({
    required double balance,
    required String symbolCoin,
  }) =>
      moneyService.formatNumber(
        symbolCoin: symbolCoin,
        value: balance,
      );

  List months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  @observable
  var currentMonth = DateTime.now().month;

  @observable
  var currentYear = DateTime.now().year;

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
  getExchanges() async {
    List<ExchangeModel> response = await repository.getExchanges();
    exchangesList = response;
  }

  @action
  getTransactions() async {
    transactionsList = [];
    List<TransactionModel> response =
        await repository.getTransactionsByMonthYear(
      month: currentMonth,
      year: currentYear,
    );
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
