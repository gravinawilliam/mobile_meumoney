import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  UserModel user = UserModel.user!;

  @observable
  int currentIndexSlider = 0;

  @action
  changedCard({index}) {
    currentIndexSlider = index;
  }
}
