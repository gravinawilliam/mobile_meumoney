import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      alignment: Alignment.center,
      height: SizeConst.screenHeight * 0.25,
      width: SizeConst.screenWidth,
      child: SvgPicture.asset(
        ImagesConst.logo,
        width: SizeConst.screenWidth * 0.6,
      ),
    );
  }
}
