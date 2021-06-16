import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';

part 'edit_bank_account_store.g.dart';

@Injectable(singleton: false)
class EditBankAccountStore = _EditBankAccountStoreBase
    with _$EditBankAccountStore;

abstract class _EditBankAccountStoreBase with Store {
  final BankAccountModel? bankAccount;

  _EditBankAccountStoreBase({
    this.bankAccount,
  });
}
