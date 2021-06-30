import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../../modules/home/home_store.dart';

part 'slide_cards_store.g.dart';

@Injectable(singleton: false)
class SlideCardsStore = _SlideCardsStoreBase with _$SlideCardsStore;

abstract class _SlideCardsStoreBase with Store {
  final HomeStore homeStore;

  @observable
  int currentIndexSlider = 0;

  _SlideCardsStoreBase(this.homeStore);

  @action
  Future<void> changedCard({
    required int index,
  }) async {
    currentIndexSlider = index;
  }
}
