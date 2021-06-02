import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'root_store.g.dart';

class RootStore = _RootStoreBase with _$RootStore;

abstract class _RootStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    switch (index) {
      case 0:
        Modular.to.navigate('../home');
        break;
      case 1:
        Modular.to.navigate('../transactionsList');
        break;
      case 2:
        Modular.to.navigate('../profile');
        break;
      default:
    }
    selectedIndex = index;
  }

  @action
  void showBottomBarOption() {}
}
