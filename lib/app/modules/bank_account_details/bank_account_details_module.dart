import 'package:flutter_modular/flutter_modular.dart';

import 'bank_account_details_page.dart';
import 'bank_account_details_store.dart';

class BankAccountDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    $BankAccountDetailsStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => BankAccountDetailsPage(),
    )
  ];
}
