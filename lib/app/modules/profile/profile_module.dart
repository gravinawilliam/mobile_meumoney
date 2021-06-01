import 'package:flutter_modular/flutter_modular.dart';

import 'profile_page.dart';
import 'profile_store.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    $ProfileStore,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => ProfilePage(),
    ),
  ];
}
