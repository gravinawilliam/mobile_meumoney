import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import 'root_store.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends ModularState<RootPage, RootStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: RouterOutlet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: DarkColorsConst.primary,
        onPressed: () => showAdaptiveActionSheet(
          bottomSheetColor: DarkColorsConst.bottomBarUnselectedItemColor,
          context: context,
          actions: <BottomSheetAction>[
            BottomSheetAction(
              trailing: Icon(
                EvaIcons.trendingUpOutline,
                color: Colors.transparent,
              ),
              leading: Icon(
                EvaIcons.trendingUpOutline,
              ),
              title: Text(
                'Criar nova transação',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onPressed: () => Modular.to.pushNamed(
                AppRoutersConst.createTransactions,
              ),
            ),
            BottomSheetAction(
              trailing: Icon(
                EvaIcons.creditCard,
                color: Colors.transparent,
              ),
              leading: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.credit_card,
                ),
              ),
              title: Text(
                'Adicionar nova conta de banco',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
          ],
          cancelAction: CancelAction(
            title: Text(
              'voltar',
            ),
          ),
        ),
        child: Icon(
          EvaIcons.plus,
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => AnimatedBottomNavigationBar(
          icons: [
            controller.selectedIndex != 0
                ? EvaIcons.homeOutline
                : EvaIcons.home,
            controller.selectedIndex != 1
                ? EvaIcons.creditCardOutline
                : EvaIcons.creditCard,
          ],
          activeIndex: store.selectedIndex,
          gapLocation: GapLocation.center,
          gapWidth: 0,
          notchSmoothness: NotchSmoothness.sharpEdge,
          onTap: (index) => controller.changePage(index),
          backgroundColor: DarkColorsConst.accent,
        ),
      ),
    );
  }
}
