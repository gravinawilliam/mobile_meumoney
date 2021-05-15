import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/widgets/all_widgets/button_tab.dart';
import '../../authenticate_register_store.dart';

class TabBarHeader extends StatefulWidget {
  @override
  _TabBarHeaderState createState() => _TabBarHeaderState();
}

class _TabBarHeaderState
    extends ModularState<TabBarHeader, AuthenticateRegisterStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonTab(
            onTap: store.trocaIndexedStack,
            isSelect: store.indexedStack == 0 ? true : false,
            title: "login",
          ),
          ButtonTab(
            onTap: store.trocaIndexedStack,
            isSelect: store.indexedStack == 1 ? true : false,
            title: "cadastro",
          ),
        ],
      ),
    );
  }
}
