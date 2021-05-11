import 'package:flutter_modular/flutter_modular.dart';

import 'modules/accounts/accounts_store.dart';
import 'modules/authenticate/authenticate_module.dart';
import 'modules/home/home_store.dart';
import 'modules/register/register_module.dart';
import 'modules/root/root_module.dart';
import 'shared/constants/constants.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $HomeStore,
    $AccountsStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      AppRoutersConst.authenticate,
      module: AuthenticateModule(),
    ),
    ModuleRoute(
      AppRoutersConst.register,
      module: RegisterModule(),
    ),
    ModuleRoute(
      '/root',
      module: RootModule(),
    ),
  ];
}
