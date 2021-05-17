import 'package:mobile_meumoney/app/shared/widgets/all_widgets/credit_card/credit_card_store.dart';
import 'package:mobile_meumoney/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authenticate_register/authenticate_register_module.dart';
import 'modules/authenticate_register/authenticate_register_store.dart';
import 'modules/authenticate_register/repositories/authenticate_repository.dart';
import 'modules/root/root_module.dart';
import 'shared/constants/constants.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    $AuthenticateRegisterStore,
    $AuthenticateRepository,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      AppRoutersConst.authenticateRegister,
      module: AuthenticateRegisterModule(),
    ),
    ModuleRoute(
      '/root',
      module: RootModule(),
    ),
  ];
}
