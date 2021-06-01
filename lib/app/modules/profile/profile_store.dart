import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';

part 'profile_store.g.dart';

@Injectable(singleton: false)
class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  @observable
  UserModel user = UserModel.user!;

  @observable
  int currentIndexSlider = 0;

  @observable
  bool valuesVisible = true;

  @action
  void changedCard({required int index}) => currentIndexSlider = index;

  @action
  void exchangeVisibility() => valuesVisible = !valuesVisible;
}
