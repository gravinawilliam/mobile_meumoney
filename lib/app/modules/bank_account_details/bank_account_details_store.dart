import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'bank_account_details_store.g.dart';

@Injectable(singleton: false)
class BankAccountDetailsStore = _BankAccountDetailsStoreBase
    with _$BankAccountDetailsStore;

abstract class _BankAccountDetailsStoreBase with Store {}
