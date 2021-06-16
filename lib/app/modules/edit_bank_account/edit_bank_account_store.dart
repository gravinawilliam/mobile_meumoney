import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';
import 'interfaces/edit_bank_account_repository_interface.dart';

part 'edit_bank_account_store.g.dart';

@Injectable(singleton: false)
class EditBankAccountStore = _EditBankAccountStoreBase
    with _$EditBankAccountStore;

abstract class _EditBankAccountStoreBase with Store {
  final IEditBankAccountRepository repository;

  _EditBankAccountStoreBase(
    this.repository,
  );
  @observable
  List<BankModel> banksList = ObservableList<BankModel>();

  @action
  getBanks() async {
    List<BankModel> response = await repository.getBanks();
    banksList = response;
  }
}
