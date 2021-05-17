import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mobile_meumoney/app/modules/home/widgets/all_widgets/name_title.dart';

import '../../../../shared/constants/all_constants/size_const.dart';
import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';

class HeaderHome extends StatefulWidget {
  final UserModel user;

  const HeaderHome({
    required this.user,
  });
  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
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
          IconButton(
            highlightColor: Colors.transparent,
            icon: Icon(
              EvaIcons.eye,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
