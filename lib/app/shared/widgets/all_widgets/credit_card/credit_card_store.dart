import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/services/interface/money_service_interface.dart';
import 'package:mobx/mobx.dart';

import '../../../models/models.dart';

part 'credit_card_store.g.dart';

@Injectable()
class CreditCardStore = _CreditCardStoreBase with _$CreditCardStore;

abstract class _CreditCardStoreBase with Store {
  final IMoneyService moneyService;

  _CreditCardStoreBase(
    this.moneyService,
  );

  @action
  String getbalance({required double balance, required CoinModel coin}) =>
      moneyService.formatNumber(
        coin: coin,
        value: balance,
      );
}
