import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../authenticate_register_store.dart';
import 'login_widget/login_widget.dart';
import 'register_widget/register_widget.dart';

class TabBarContent extends StatefulWidget {
  @override
  _TabBarContentState createState() => _TabBarContentState();
}

class _TabBarContentState
    extends ModularState<TabBarContent, AuthenticateRegisterStore> {
  int indexedStack = 0;
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => IndexedStack(
          index: store.indexedStack,
          children: [
            LoginWidget(),
            RegisterWidget(),
          ],
        ),
      );
}
