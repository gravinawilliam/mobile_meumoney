import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'list_categories_transaction_store.g.dart';

@Injectable(singleton: false)
class ListCategoriesTransactionStore = _ListCategoriesTransactionStoreBase
    with _$ListCategoriesTransactionStore;

abstract class _ListCategoriesTransactionStoreBase with Store {}
