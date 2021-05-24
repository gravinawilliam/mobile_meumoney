import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'create_transaction_store.g.dart';

@Injectable(singleton: false)
class CreateTransactionStore = _CreateTransactionStoreBase
    with _$CreateTransactionStore;

abstract class _CreateTransactionStoreBase with Store {}
