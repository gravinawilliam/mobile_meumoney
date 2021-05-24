import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/services/user_service.dart';
import 'splash_page.dart';
import 'splash_store.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    $UserService,
    $SplashStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutersConst.splash,
      child: (_, args) => SplashPage(),
    ),
  ];
}
