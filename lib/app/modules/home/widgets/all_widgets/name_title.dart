import 'package:flutter/material.dart';

import '../../../../shared/constants/all_constants/fonts_const.dart';
import '../../../../shared/constants/constants.dart';

class NameTitle extends StatefulWidget {
  final String userName;

  const NameTitle({
    required this.userName,
  });
  @override
  _NameTitleState createState() => _NameTitleState();
}

class _NameTitleState extends State<NameTitle> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      width: SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal),
      padding: EdgeInsets.only(
        left: SizeConst.paddingHorizontal * 0.5,
      ),
      child: Text(
        widget.userName,
        style: TextStyle(
          fontSize: 18,
          fontFamily: FontsConst.medium,
        ),
      ),
    );
  }
}
