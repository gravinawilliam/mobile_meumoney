import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authenticate_register/authenticate_register_module.dart';
import 'modules/authenticate_register/authenticate_register_store.dart';
import 'modules/authenticate_register/repositories/authenticate_repository.dart';
import 'modules/create_edit_bank_account/create_edit_bank_account_module.dart';
import 'modules/create_edit_bank_account/create_edit_bank_account_store.dart';
import 'modules/create_edit_bank_account/repositories/create_edit_account_repository.dart';
import 'modules/create_transaction/create_transaction_module.dart';
import 'modules/create_transaction/create_transaction_store.dart';
import 'modules/create_transaction/widgets/all_widgets/list_categories_transaction/list_categories_transaction_store.dart';
import 'modules/create_transaction/widgets/all_widgets/tab_bar_content_transaction/tab_bar_content_transaction_store.dart';
import 'modules/home/home_store.dart';
import 'modules/profile/profile_store.dart';
import 'modules/root/root_module.dart';
import 'modules/splash/repositories/splash_repository.dart';
import 'modules/splash/splash_module.dart';
import 'modules/transactions/repositories/transactions_repository.dart';
import 'shared/constants/constants.dart';
import 'shared/services/money_service.dart';
import 'shared/services/user_service.dart';
import 'shared/widgets/all_widgets/box_money/box_money_store.dart';
import 'shared/widgets/all_widgets/credit_card/credit_card_controller.dart';
import 'shared/widgets/all_widgets/row_box_money/row_box_money_store.dart';
import 'shared/widgets/all_widgets/slide_cards/slide_cards_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $CreateEditAccountRepository,
    $CreateEditBankAccountStore,
    $ListCategoriesTransactionStore,
    $TabBarContentTransactionStore,
    $CreateTransactionStore,
    $SplashRepository,
    $HomeStore,
    $ProfileStore,
    $AuthenticateRegisterStore,
    $AuthenticateRepository,
    $CreditCardController,
    $RowBoxMoneyStore,
    $BoxMoneyStore,
    $MoneyService,
    $SlideCardsStore,
    $TransactionsRepository,
    $UserService,
    Bind((i) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      AppRoutersConst.authenticateRegister,
      module: AuthenticateRegisterModule(),
    ),
    ModuleRoute(
      AppRoutersConst.root,
      module: RootModule(),
    ),
    ModuleRoute(
      AppRoutersConst.splash,
      module: SplashModule(),
    ),
    ModuleRoute(
      AppRoutersConst.createTransactions,
      module: CreateTransactionModule(),
    ),
    ModuleRoute(
      AppRoutersConst.createEditBankAccount,
      module: CreateEditBankAccountModule(),
    ),
  ];
}
