import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';
import '../../../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../home_store.dart';

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
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
        vertical: SizeConst.paddingVertical,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubtitleWidget(
            hasMarginHorizontal: false,
            subTitle: widget.user.name,
            fontFamily: FontsConst.bold,
            fontSize: 18,
          ),
          Observer(
            builder: (_) => IconButton(
              icon: Icon(
                store.valuesVisible ? EvaIcons.eye : EvaIcons.eyeOff,
                size: 30,
              ),
              onPressed: () => store.exchangeVisibility(),
            ),
          ),
        ],
      ),
    );
  }
}
