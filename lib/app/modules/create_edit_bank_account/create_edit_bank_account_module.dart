import 'package:flutter_modular/flutter_modular.dart';

import 'create_edit_bank_account_page.dart';
import 'create_edit_bank_account_store.dart';

class CreateEditBankAccountModule extends Module {
  @override
  final List<Bind> binds = [
    $CreateEditBankAccountStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => CreateEditBankAccountPage(
        bankAccount: args.data,
      ),
    )
  ];
}
