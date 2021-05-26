import 'package:flutter_modular/flutter_modular.dart';

import 'accountDetail_page.dart';
import 'accountDetail_store.dart';

class AccountDetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AccountDetailStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => AccountDetailPage()),
  ];
}
