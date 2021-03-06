import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authenticate_register/authenticate_register_module.dart';
import 'modules/authenticate_register/authenticate_register_store.dart';
import 'modules/authenticate_register/repositories/authenticate_repository.dart';
import 'modules/bank_account_details/bank_account_details_module.dart';
import 'modules/bank_account_details/bank_account_details_store.dart';
import 'modules/bank_account_details/repositories/bank_account_details_repository.dart';
import 'modules/create_bank_account/create_bank_account_module.dart';
import 'modules/create_bank_account/repositories/create_bank_account_repository.dart';
import 'modules/create_transaction/create_transaction_module.dart';
import 'modules/create_transaction/create_transaction_store.dart';
import 'modules/create_transaction/repositories/create_transaction_repository.dart';
import 'modules/create_transaction/widgets/all_widgets/list_categories_transaction/list_categories_transaction_store.dart';
import 'modules/edit_bank_account/edit_bank_account_module.dart';
import 'modules/edit_bank_account/edit_bank_account_store.dart';
import 'modules/edit_bank_account/repositories/edit_bank_account_repository.dart';
import 'modules/home/home_store.dart';
import 'modules/home/repositories/home_repository.dart';
import 'modules/profile/profile_store.dart';
import 'modules/root/root_module.dart';
import 'modules/root/root_store.dart';
import 'modules/splash/repositories/splash_repository.dart';
import 'modules/splash/splash_module.dart';
import 'modules/transactions/repositories/transactions_repository.dart';
import 'modules/transactions/transactions_store.dart';
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
    $EditBankAccountRepository,
    $EditBankAccountStore,
    $RootStore,
    $HomeRepository,
    $CreateTransactionRepository,
    $CreateBankAccountRepository,
    $ListCategoriesTransactionStore,
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
    $TransactionsStore,
    $BankAccountDetailsRepository,
    $BankAccountDetailsStore,
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
      AppRoutersConst.createBankAccount,
      module: CreateBankAccountModule(),
    ),
    ModuleRoute(
      AppRoutersConst.editBankAccount,
      module: EditBankAccountModule(),
    ),
    ModuleRoute(
      AppRoutersConst.bankAccountDetails,
      module: BankAccountDetailsModule(),
    ),
  ];
}
