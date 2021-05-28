import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../interfaces/services/money_service_interface.dart';

part 'box_money_store.g.dart';

@Injectable(
  singleton: false,
)
class BoxMoneyStore = _BoxMoneyStoreBase with _$BoxMoneyStore;

abstract class _BoxMoneyStoreBase with Store {
  final IMoneyService moneyService;

  _BoxMoneyStoreBase(
    this.moneyService,
  );

  @action
  String getbalance({
    required double balance,
    required String symbolCoin,
  }) =>
      moneyService.formatNumber(
        symbolCoin: symbolCoin,
        value: balance,
      );
}
