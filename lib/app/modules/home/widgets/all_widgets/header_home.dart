import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';
import '../../home_store.dart';
import '../home_widgets.dart';

class HeaderHome extends StatefulWidget {
  final UserModel user;

  const HeaderHome({
    required this.user,
  });

  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends ModularState<HeaderHome, HomeStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: SizeConst.paddingVertical,
        top: 0.5 * SizeConst.paddingVertical,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NameTitle(
            userName: widget.user.name,
          ),
          Observer(
            builder: (_) => Container(
              width: SizeConst.screenWidthWithMargin * 0.3,
              alignment: Alignment.centerRight,
              child: IconButton(
                highlightColor: Colors.transparent,
                icon: Icon(
                  store.valuesVisible ? EvaIcons.eye : EvaIcons.eyeOff,
                  size: 30,
                ),
                onPressed: () => store.exchangeVisibility(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
