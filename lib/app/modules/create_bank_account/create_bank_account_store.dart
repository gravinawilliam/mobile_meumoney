import 'package:asuka/asuka.dart' as asuka;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../shared/constants/constants.dart';
import '../../shared/errors/errors.dart';
import '../../shared/interfaces/services/money_service_interface.dart';
import '../../shared/models/models.dart';
import '../home/home_store.dart';
import 'interfaces/create_bank_account_repository_interface.dart';
import 'models/create_bank_account_model.dart';

part 'create_bank_account_store.g.dart';

@Injectable(singleton: false)
class CreateBankAccountStore = _CreateBankAccountStoreBase
    with _$CreateBankAccountStore;

abstract class _CreateBankAccountStoreBase with Store {
  final HomeStore homeStore = Modular.get();
  final IMoneyService moneyService;
  final ICreateBankAccountRepository repository;

  _CreateBankAccountStoreBase(
    this.moneyService,
    this.repository,
  ) {
    getBanks();
  }

  @observable
  int? selectedIndexBank;

  @observable
  bool enableTextFormField = true;

  @observable
  int redCardColor = 18;

  @observable
  int greenCardColor = 152;

  @observable
  int blueCardColor = 78;

  @observable
  String logoUrlBank = "";

  @observable
  String symbolCoin = "BRL";

  @observable
  double balance = 0.0;

  @observable
  String accountNumbers = "";

  @observable
  String cardholderName = "";

  @observable
  int monthValidity = 0;

  @observable
  int yearValidity = 0;

  @observable
  String bankId = "";

  @observable
  List<BankModel> banksList = ObservableList<BankModel>();

  @observable
  RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();

  @action
  void setBalance(String value) {
    balance = double.parse(value);
  }

  @action
  void setAccountNumbers(String value) {
    if (value.length <= 4) {
      accountNumbers = value;
    }
  }

  @action
  void setCardHolderName(String value) {
    cardholderName = value;
  }

  @action
  void setMonthValidity(String value) {
    if (int.parse(value) <= 12 && int.parse(value) > 0) {
      monthValidity = int.parse(value);
    }
  }

  @action
  void setYearValidity(String value) {
    yearValidity = int.parse(value);
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

  @action
  getBanks() async {
    List<BankModel> response = await repository.getBanks();
    banksList = response;
  }

  @action
  void setBank(int index) {
    selectedIndexBank = index;
    logoUrlBank = banksList[index].logoUrl;
    redCardColor = banksList[index].redColorCard;
    greenCardColor = banksList[index].greenColorCard;
    blueCardColor = banksList[index].blueColorCard;
  }

  @computed
  CreateBankAccountModel get credential => CreateBankAccountModel(
        accountNumbers: accountNumbers,
        balance: balance,
        bankId: banksList[selectedIndexBank!].id,
        cardHolderName: cardholderName,
        monthValidity: monthValidity,
        symbolCoin: "BRL",
        yearValidity: yearValidity,
      );

  @action
  Future<void> createBankAccount() async {
    try {
      enableTextFormField = false;
      Either<FailureDio, BankAccountModel> response =
          await repository.createBankAccount(credential);
      response.fold(
        (failure) {},
        (response) async {
          btnController.success();
          UserModel.bankAccounts!.add(response);
          Modular.to.pop();
          Modular.to.pop();
        },
      );
    } catch (error) {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: DarkColorsConst.error,
          content: Text(
            "Erro ao criar a conta bancária",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.textPrimary,
              fontSize: 16,
              fontFamily: FontsConst.medium,
            ),
          ),
        ),
      );
      btnController.error();
      await Future.delayed(Duration(milliseconds: 1300));
      enableTextFormField = true;
    } finally {
      btnController.reset();
    }
  }
}
