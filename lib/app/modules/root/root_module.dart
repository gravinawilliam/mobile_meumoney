import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/all_constants/app_routers_const.dart';
import '../create_edit_bank_account/create_edit_bank_account_module.dart';
import '../home/home_module.dart';
import '../profile/profile_module.dart';
import '../transactions/transactions_module.dart';
import 'root_page.dart';
import 'root_store.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => RootStore(),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => RootPage(),
      children: [
        ModuleRoute(
          AppRoutersConst.home,
          module: HomeModule(),
        ),
        ModuleRoute(
          AppRoutersConst.profile,
          module: ProfileModule(),
        ),
        ModuleRoute(
          AppRoutersConst.transactionsList,
          module: TransactionsModule(),
        ),
        ModuleRoute(
          AppRoutersConst.createEditBankAccount,
          module: CreateEditBankAccountModule(),
        ),
      ],
    ),
  ];
}
