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
      width: SizeConst.screenWidthWithMargin * 0.7,
      alignment: Alignment.centerLeft,
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
