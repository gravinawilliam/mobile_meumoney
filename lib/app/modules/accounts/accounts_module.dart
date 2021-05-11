import 'package:flutter_modular/flutter_modular.dart';

import 'accounts_Page.dart';
import 'accounts_store.dart';

class AccountsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AccountsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => AccountsPage(),
    ),
  ];
}
