import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/constants/all_constants/images_const.dart';
import '../../../../shared/constants/all_constants/size_const.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: SizeConst.screenHeight * 0.15,
          bottom: SizeConst.screenHeight * 0.05,
        ),
        height: SizeConst.screenHeight * 0.1,
        width: SizeConst.screenWidth,
        child: SvgPicture.asset(
          ImagesConst.logo,
          width: SizeConst.screenWidth * 0.6,
        ),
      );
}
