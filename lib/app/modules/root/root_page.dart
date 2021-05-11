import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:mobile_meumoney/app/shared/constants/all_constants/colors_const.dart';
import 'root_controller.dart';

class RootPage extends StatefulWidget {
  final String title;
  const RootPage({Key? key, this.title = "Root"}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends ModularState<RootPage, RootController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: RouterOutlet(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: DarkColorsConst.primary,
          icons: [
            EvaIcons.homeOutline,
            EvaIcons.creditCardOutline,
          ],
          activeIndex: controller.selectedIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) => controller.changePage(index),
          //other params
        ),
      );
}
