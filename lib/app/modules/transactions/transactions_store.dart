import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'transactions_store.g.dart';

@Injectable(singleton: false)
class TransactionsStore = _TransactionsStoreBase with _$TransactionsStore;

abstract class _TransactionsStoreBase with Store {
  @observable
  DateTime selectedDay = DateTime.now();
}
