import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/bank_account_details/bank_account_details_module.dart';
import 'package:mobile_meumoney/app/shared/constants/all_constants/app_routers_const.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => HomePage(),
      children: [
        ModuleRoute(
          AppRoutersConst.bankAccountDetails,
          module: BankAccountDetailsModule(),
        ),
      ],
    ),
  ];
}
