import 'package:flutter_modular/flutter_modular.dart';

import 'create_bank_account_page.dart';
import 'create_bank_account_store.dart';

class CreateBankAccountModule extends Module {
  @override
  final List<Bind> binds = [
    $CreateBankAccountStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => CreateBankAccountPage(),
    ),
  ];
}
