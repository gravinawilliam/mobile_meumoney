import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'accounts_store.g.dart';

@Injectable()
class AccountsStore = _AccountsStoreBase with _$AccountsStore;

abstract class _AccountsStoreBase with Store {}
