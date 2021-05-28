import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../../shared/models/models.dart';

part 'tab_bar_content_transaction_store.g.dart';

@Injectable(singleton: false)
class TabBarContentTransactionStore = _TabBarContentTransactionStoreBase
    with _$TabBarContentTransactionStore;

abstract class _TabBarContentTransactionStoreBase with Store {
  @observable
  UserModel user = UserModel.user!;

  @observable
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
}
