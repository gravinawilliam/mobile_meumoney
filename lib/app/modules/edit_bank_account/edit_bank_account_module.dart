import 'package:flutter_modular/flutter_modular.dart';

import 'edit_bank_account_page.dart';
import 'edit_bank_account_store.dart';

class EditBankAccountModule extends Module {
  @override
  final List<Bind> binds = [
    $EditBankAccountStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => EditBankAccountPage(
        bankAccount: args.data,
      ),
    ),
  ];
}
