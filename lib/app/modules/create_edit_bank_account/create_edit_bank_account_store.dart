import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/all_models/user_model.dart';

part 'create_edit_bank_account_store.g.dart';

@Injectable(singleton: false)
class CreateEditBankAccountStore = _CreateEditBankAccountStoreBase
    with _$CreateEditBankAccountStore;

abstract class _CreateEditBankAccountStoreBase with Store {
  @observable
  UserModel user = UserModel.user!;

  @observable
  var accountValueTextEditingController = TextEditingController();
}
