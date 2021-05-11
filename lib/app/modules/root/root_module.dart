import 'package:flutter_modular/flutter_modular.dart';

import 'calls/calls_module.dart';
import 'chat/chat_module.dart';
import 'root_controller.dart';
import 'root_page.dart';
import 'status/status_module.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => RootController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => RootPage(),
      children: [
        ModuleRoute('/chat', module: ChatModule()),
        ModuleRoute('/status', module: StatusModule()),
        ModuleRoute('/call', module: CallsModule()),
      ],
    ),
  ];
}
