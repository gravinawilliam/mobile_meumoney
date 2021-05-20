import 'package:flutter_modular/flutter_modular.dart';
import '../interfaces/services/user_service_interface.dart';
import 'local_storage_service.dart';

part 'user_service.g.dart';

@Injectable()
class UserService implements IUserService {
  @override
  Future<String?> getCurrentToken() async {
    var contains = await LocalStorageService.cointains('current_token');
    if (contains) {
      var token = await LocalStorageService.getValue<String>(
        'current_token',
      );
      return token;
    } else {
      return null;
    }
  }

  @override
  Future<void> saveCurrentToken({required String token}) async {
    LocalStorageService.setValue<String>('current_token', token);
  }
}
