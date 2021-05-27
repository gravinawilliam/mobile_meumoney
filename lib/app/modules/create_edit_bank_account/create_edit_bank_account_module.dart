import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/create_edit_bank_account/create_edit_bank_account_page.dart';
import 'package:mobile_meumoney/app/modules/create_edit_bank_account/create_edit_bank_account_store.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';

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
