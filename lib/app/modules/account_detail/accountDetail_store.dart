import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'accountDetail_store.g.dart';

@Injectable(singleton: false)
class AccountDetailStore = _AccountDetailStoreBase with _$AccountDetailStore;
abstract class _AccountDetailStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
