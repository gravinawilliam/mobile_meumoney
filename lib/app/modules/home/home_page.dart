import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/credit_card/credit_card_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/slide_cards.dart';

import '../../shared/widgets/widgets_globais.dart';
import 'home_store.dart';
import 'widgets/all_widgets/header_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: ScrollBody(
        hasMargin: false,
        children: [
          HeaderHome(
            user: store.user,
          ),
        ],
      ));
}
