import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/constants/constants.dart';
import '../../shared/errors/errors.dart';
import '../../shared/interfaces/services/user_service_interface.dart';
import '../../shared/models/models.dart';
import 'interfaces/repositories/splash_repository_interface.dart';

part 'splash_store.g.dart';

@Injectable(singleton: false)
class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  final IUserService userService;
  final ISplashRepository splashRepository;

  _SplashStoreBase(
    this.userService,
    this.splashRepository,
  );

  @action
  Future<void> verifyCurrentUser() async {
    String? token = await userService.getCurrentToken();
    if (token != null) {
      await getUserApi(token: token);
    } else {
      Modular.to.pushReplacementNamed(AppRoutersConst.authenticateRegister);
    }
  }

  @action
  Future<void> getUserApi({required String token}) async {
    Either<FailureDio, UserModel> getUserResponse =
        await splashRepository.getUserApi(token: token);
    try {
      getUserResponse.fold(
        (failure) {},
        (response) async {
          UserModel.user = response;
          UserModel.token = token;
          Modular.to.navigate('/root/home');
        },
      );
    } catch (error) {
      Modular.to.pushReplacementNamed(AppRoutersConst.authenticateRegister);
    }
  }
}
