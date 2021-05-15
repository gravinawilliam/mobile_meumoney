import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/home/home_module.dart';
import 'package:mobile_meumoney/app/modules/root/root_page.dart';
import 'package:mobile_meumoney/app/modules/root/root_page.dart';
import 'package:mobile_meumoney/app/shared/constants/all_constants/app_routers_const.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => RootPage(),
    ),
    ModuleRoute(
      AppRoutersConst.home,
      module: HomeModule(),
    ),
  ];
}
