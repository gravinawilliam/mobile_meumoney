import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'slide_cards_store.g.dart';

@Injectable(singleton: false)
class SlideCardsStore = _SlideCardsStoreBase with _$SlideCardsStore;

abstract class _SlideCardsStoreBase with Store {
  @observable
  int currentIndexSlider = 0;

  @action
  void changedCard({required int index}) => currentIndexSlider = index;
}
