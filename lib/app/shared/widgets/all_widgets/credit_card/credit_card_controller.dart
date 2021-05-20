import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../interfaces/services/money_service_interface.dart';

part 'credit_card_controller.g.dart';

@Injectable()
class CreditCardController = _CreditCardControllerBase
    with _$CreditCardController;

abstract class _CreditCardControllerBase with Store {
  final IMoneyService moneyService;

  _CreditCardControllerBase(
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
