import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../shared/widgets/all_widgets/title_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'profile_store.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ModularState<ProfilePage, ProfileStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        hasMargin: false,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
              vertical: SizeConst.paddingVertical,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleWidget(
                  title: store.user.name,
                ),
                TextButton(
                  style: ButtonStyle(
                    visualDensity: VisualDensity.compact,
                  ),
                  onPressed: () => {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConst.paddingHorizontal * 0.3,
                      vertical: SizeConst.paddingHorizontal * 0.2,
                    ),
                    margin: EdgeInsets.only(
                      left: SizeConst.paddingHorizontal * 0.5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.white,
                        width: 0.5,
                      ),
                    ),
                    child: SubtitleWidget(
                      fontSize: 14,
                      subTitle: "Editar perfil",
                      hasMarginVertical: false,
                      hasMarginHorizontal: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
