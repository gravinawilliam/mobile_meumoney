import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/authenticate_register/repositories/authenticate_repository.dart';
import 'package:mobile_meumoney/app/modules/root/root_module.dart';

import 'modules/authenticate_register/authenticate_register_module.dart';
import 'modules/authenticate_register/authenticate_register_store.dart';
import 'shared/constants/constants.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $AuthenticateRegisterStore,
    $AuthenticateRepository,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      AppRoutersConst.loginRegister,
      module: AuthenticateRegisterModule(),
    ),
    ModuleRoute(
      '/root',
      module: RootModule(),
    ),
  ];
}
