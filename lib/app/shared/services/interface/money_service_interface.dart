import 'package:flutter_modular/flutter_modular.dart';
import '../../models/models.dart';

abstract class IMoneyService implements Disposable {
  String formatNumber({double value, CoinModel coin});
}
