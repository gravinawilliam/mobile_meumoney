import 'package:flutter/material.dart';
import '../../../shared/constants/constants.dart';

class ScrollBody extends StatelessWidget {
  final List<Widget> children;
  final bool hasMargin;
  final double paddingRight;

  const ScrollBody({
    required this.children,
    this.hasMargin = true,
    this.paddingRight = 0,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return SafeArea(
      child: Container(
        height: SizeConst.screenHeight,
        width: SizeConst.screenWidth,
        margin: EdgeInsets.symmetric(
          horizontal: hasMargin ? SizeConst.paddingHorizontal : 0,
        ),
        padding: EdgeInsets.only(
          right: paddingRight,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
