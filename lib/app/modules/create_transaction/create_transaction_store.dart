import 'package:asuka/asuka.dart' as asuka;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/models/all_models/notification_model.dart';
import 'package:mobx/mobx.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../shared/constants/constants.dart';
import '../../shared/errors/errors.dart';
import '../../shared/models/models.dart';
import 'interfaces/create_transaction_repository_interface.dart';
import 'models/request_create_transaction_model.dart';

part 'create_transaction_store.g.dart';

@Injectable(singleton: false)
class CreateTransactionStore = _CreateTransactionStoreBase
    with _$CreateTransactionStore;

abstract class _CreateTransactionStoreBase with Store {
  final ICreateTransactionRepository repository;

  _CreateTransactionStoreBase(
    this.repository,
  );

  @observable
  UserModel user = UserModel.user!;

  @observable
  DateTime selectedDate = DateTime.now();

  @observable
  var dateController = DatePickerController(
    initialDateTime: DateTime.now(),
    minYear: 2011,
    maxYear: 2050,
  );

  @observable
  double valueTransaction = 0.0;

  @observable
  String title = '';

  @observable
  String note = '';

  @observable
  int currentIndexSlider = 0;

  @observable
  int selectedIndexTransactionType = 0;

  @observable
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();

  @action
  void setValueTransaction(String value) {
    valueTransaction = double.parse(value);
  }

  @action
  void setDate(DateTime value) => selectedDate = value;

  @action
  void setTitle(String value) => title = value;

  @action
  void setNote(String value) => note = value;

  @action
  void setTransactionType(int value) => selectedIndexTransactionType = value;

  @action
  void changedCard({required int index}) => currentIndexSlider = index;

  @computed
  RequestCreateTransactionModel get credential => RequestCreateTransactionModel(
        date: "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}",
        fromBankAccount: UserModel.bankAccounts![currentIndexSlider].id,
        note: note,
        symbolCoin: "BRL",
        title: title,
        transactionType: selectedIndexTransactionType == 0 ? "gain" : "expense",
        value: valueTransaction.toDouble(),
      );

  @action
  Future<void> createTransaction() async {
    try {
      Either<Failure, TransactionModel> response =
          await repository.createTransaction(credential);
      response.fold(
        (failure) {},
        (response) async {
          buttonController.success();
          NotificationModel? response = await repository.getNotification();
          if (response == null) {
            Modular.to.pop();
            Modular.to.pop();
          } else {
            asuka.showSnackBar(
              SnackBar(
                backgroundColor: Colors.yellowAccent,
                content: Text(
                  "Lei de Benford: Algo não está certo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: DarkColorsConst.accent,
                    fontSize: 16,
                    fontFamily: FontsConst.medium,
                  ),
                ),
              ),
            );
            await Future.delayed(Duration(milliseconds: 1500));
            Modular.to.pop();
            Modular.to.pop();
          }
        },
      );
    } catch (error) {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: DarkColorsConst.error,
          content: Text(
            "Erro ao criar a transação",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.textPrimary,
              fontSize: 16,
              fontFamily: FontsConst.medium,
            ),
          ),
        ),
      );
      buttonController.error();
      await Future.delayed(Duration(milliseconds: 1300));
    } finally {
      buttonController.reset();
    }
  }
}
