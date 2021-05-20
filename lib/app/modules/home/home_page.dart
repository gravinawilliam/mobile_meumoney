import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'home_store.dart';
import 'widgets/home_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        hasMargin: false,
        children: [
          HeaderHome(
            user: store.user,
          ),
          IndexedStack(
            index: controller.user.bankAccounts.isEmpty ? 0 : 1,
            children: [
              Container(
                width: SizeConst.screenWidthWithMargin,
                height: SizeConst.screenHeight * 0.22,
                decoration: BoxDecoration(
                  color: DarkColorsConst.saldoGeral.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(
                    SizeConst.paddingHorizontal * 0.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 32,
                      icon: Icon(
                        EvaIcons.plusSquareOutline,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "Adicionar Conta de banco",
                    ),
                  ],
                ),
              ),
              Observer(
                builder: (_) => SlideCards(
                  bankAccouts: store.user.bankAccounts,
                  valuesVisible: store.valuesVisible,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
