import 'package:asuka/asuka.dart' as asuka;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../shared/constants/constants.dart';
import '../../shared/errors/errors.dart';
import '../../shared/models/all_models/user_model.dart';
import '../../shared/models/models.dart';
import 'interfaces/create_edit_bank_account_interface.dart';
import 'models/create_bank_account_model.dart';

part 'create_edit_bank_account_store.g.dart';

@Injectable(singleton: false)
class CreateEditBankAccountStore = _CreateEditBankAccountStoreBase
    with _$CreateEditBankAccountStore;

abstract class _CreateEditBankAccountStoreBase with Store {
  final ICreateEditAccountRepository? repository;

  final BankAccountModel? bankAccountModel;

  @observable
  BankAccountModel? bankAccount;

  _CreateEditBankAccountStoreBase({
    this.repository,
    this.bankAccountModel,
  }) {
    bankAccount = bankAccountModel;
    verifyBankAccountNull();
  }

  @observable
  UserModel user = UserModel.user!;

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
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();

  @action
  void verifyBankAccountNull() {
    if (bankAccount != null) {
      redCardColor = bankAccount!.bank.redColorCard;
      greenCardColor = bankAccount!.bank.greenColorCard;
      blueCardColor = bankAccount!.bank.blueColorCard;
      logoUrlBank = bankAccount!.bank.logoUrl;
      balance = bankAccount!.balance;
      accountNumbers = bankAccount!.accountNumbers;
      monthValidity = bankAccount!.monthValidity;
      yearValidity = bankAccount!.yearValidity;
      cardholderName = bankAccount!.cardholderName;
    }
  }

  @action
  void setNullBankAccount() {
    bankAccount = null;
    print(bankAccount);
  }

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
  String getTitle() => bankAccount == null ? "Criar conta" : "Editar conta";

  @computed
  CreateBankAccountModel get createBankAccountCredential =>
      CreateBankAccountModel(
        accountNumbers: accountNumbers,
        balance: balance,
        cardHolderName: cardholderName,
        bankId: bankId,
        montValidity: monthValidity,
        yearValidity: yearValidity,
        symbolCoin: symbolCoin,
      );

  @action
  Future<void> createBankAccount() async {
    try {
      Either<Failure, BankAccountModel> createBankAccount =
          await repository!.createBankAccount(createBankAccountCredential);
      createBankAccount.fold((failure) {}, (response) async {
        buttonController.success();
        Modular.to.navigate(AppRoutersConst.home);
      });
    } catch (error) {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: DarkColorsConst.error,
          content: Text(
            "Erro ao criar conta",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.textPrimary,
              fontSize: 16,
            ),
          ),
        ),
      );
      buttonController.error();
      await Future.delayed(Duration(milliseconds: 1300));
    }
  }
}
