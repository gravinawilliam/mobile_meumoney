import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';
import 'interface/money_service_interface.dart';

part 'money_service.g.dart';

@Injectable()
class MoneyService implements IMoneyService {
  @override
  void dispose() {}

  @override
  String formatNumber({
    double? value,
    CoinModel? coin,
  }) {
    if (coin == null) {
      coin = CoinModel(
        id: '',
        acronymName: "BRL",
        currencySymbols: "R\$",
        locale: "pt-br",
        name: "Real",
      );
    }

    if (value != null) {
      String formatedNumber = NumberFormat.simpleCurrency(
        name: coin.acronymName,
        locale: coin.locale,
      ).format(
        value,
      );
      return formatedNumber;
    } else {
      return '0,00';
    }
  }
}
