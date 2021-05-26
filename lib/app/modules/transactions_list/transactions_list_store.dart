import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'transactions_list_store.g.dart';

@Injectable(singleton: false)
class TransactionsListStore = _TransactionsListStoreBase
    with _$TransactionsListStore;

abstract class _TransactionsListStoreBase with Store {}
