import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/constants/constants.dart';

import 'bank_account_details_page.dart';
import 'bank_account_details_store.dart';

class BankAccountDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.singleton((i) => BankAccountDetailsStore(i.args!.data)),
    $BankAccountDetailsStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutersConst.bankAccountDetails,
      child: (_, args) => BankAccountDetailsPage(
        bankAccount: args.data,
      ),
    ),
  ];
}
