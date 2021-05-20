import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'root_store.g.dart';

class RootStore = _RootStoreBase with _$RootStore;

abstract class _RootStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    //  /root/call/    Caso o Modular.to.path Terminar com / vc tem que utilizar ../chat caso nao voce pode utilizar ./chat
    print(Modular.to.path);

    switch (index) {
      case 0:
        Modular.to.navigate('../home');
        break;
      case 1:
        Modular.to.navigate('../accounts');
        break;
      default:
    }
    selectedIndex = index;
  }
}
