import 'package:flutter_modular/flutter_modular.dart';
import 'transactions_page.dart';
import 'transactions_store.dart';

class TransactionsModule extends Module {
  @override
  final List<Bind> binds = [$TransactionsStore];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => TransactionsPage(),
    ),
  ];
}
