import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../shared/constants/all_constants/size_const.dart';
import 'splash_store.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashStore> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(),
      controller.verifyCurrentUser,
    );
    SizeConst().init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          height: SizeConst.screenHeight * 0.1,
          width: SizeConst.screenWidth,
          child: LoadingIndicator(
            indicatorType: Indicator.ballTrianglePath,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
