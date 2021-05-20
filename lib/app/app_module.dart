import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authenticate_register/authenticate_register_module.dart';
import 'modules/authenticate_register/authenticate_register_store.dart';
import 'modules/authenticate_register/repositories/authenticate_repository.dart';
import 'modules/home/home_store.dart';
import 'modules/root/root_module.dart';
import 'modules/splash/repositories/splash_repository.dart';
import 'modules/splash/splash_module.dart';
import 'shared/constants/constants.dart';
import 'shared/services/money_service.dart';
import 'shared/widgets/all_widgets/credit_card/credit_card_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $SplashRepository,
    $HomeStore,
    $AuthenticateRegisterStore,
    $AuthenticateRepository,
    $CreditCardController,
    $MoneyService,
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
  ];
}
