import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/all_constants/app_routers_const.dart';
import 'register_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutersConst.register,
      transition: TransitionType.rightToLeft,
      child: (_, args) => RegisterPage(),
    ),
  ];
}
