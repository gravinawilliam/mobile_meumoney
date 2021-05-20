import 'package:flutter_modular/flutter_modular.dart';

abstract class IMoneyService implements Disposable {
  String formatNumber({
    required double value,
    required String symbolCoin,
  });
}
