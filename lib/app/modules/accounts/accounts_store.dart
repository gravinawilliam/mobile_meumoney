import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';

part 'accounts_store.g.dart';

@Injectable()
class AccountsStore = _AccountsStoreBase with _$AccountsStore;

abstract class _AccountsStoreBase with Store {
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
