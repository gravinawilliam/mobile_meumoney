import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../interfaces/services/money_service_interface.dart';

part 'money_service.g.dart';

@Injectable()
class MoneyService implements IMoneyService {
  @override
  void dispose() {}

  @override
  String formatNumber({
    required double value,
    required String symbolCoin,
  }) {
    String formatedNumber = NumberFormat.simpleCurrency(
      name: symbolCoin,
      locale: symbolCoin == "BRL" ? "pt-br" : "en-us",
    ).format(value);
    return formatedNumber;
  }
}
