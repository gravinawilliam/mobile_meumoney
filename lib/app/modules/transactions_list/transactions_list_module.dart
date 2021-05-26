import 'package:flutter_modular/flutter_modular.dart';
import 'transactions_list_page.dart';
import 'transactions_list_store.dart';

class TransactionsListModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TransactionsListStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => TransactionsListPage(),
    ),
  ];
}
