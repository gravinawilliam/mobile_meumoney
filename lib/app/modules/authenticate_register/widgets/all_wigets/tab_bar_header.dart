import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/widgets/all_widgets/button_tab.dart';
import '../../authenticate_register_store.dart';
import 'login_widget/login_widget.dart';
import 'register_widget/register_widget.dart';

class TabBarHeader extends StatefulWidget {
  @override
  _TabBarHeaderState createState() => _TabBarHeaderState();
}

class _TabBarHeaderState
    extends ModularState<TabBarHeader, AuthenticateRegisterStore> {
  int indexedStack = 0;
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Column(
      children: [
        Observer(
          builder: (_) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonTab(
                onTap: () {
                  setState(() {
                    indexedStack = 0;
                  });
                },
                isSelect: indexedStack == 0 ? true : false,
                title: "login",
              ),
              ButtonTab(
                onTap: () {
                  setState(() {
                    indexedStack = 1;
                  });
                },
                isSelect: indexedStack == 1 ? true : false,
                title: "cadastro",
              ),
            ],
          ),
        ),
        IndexedStack(
          index: indexedStack,
          children: [
            LoginWidget(),
            RegisterWidget(),
          ],
        )
      ],
    );
  }
}
