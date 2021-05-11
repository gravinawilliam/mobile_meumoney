import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/accounts/accounts_module.dart';
import 'package:mobile_meumoney/app/modules/home/home_module.dart';

import 'calls/calls_module.dart';

import 'root_controller.dart';
import 'root_page.dart';
import 'status/status_module.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => RootController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => RootPage(),
      children: [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/accounts', module: AccountsModule()),
      ],
    ),
  ];
}
