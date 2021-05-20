import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: DarkColorsConst.primary,
        elevation: 7,
        child: Icon(
          EvaIcons.plus,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                notchSmoothness: NotchSmoothness.sharpEdge,
                onTap: (index) => controller.changePage(index),
                backgroundColor: DarkColorsConst.accent,
              )),
    );
  }
}
