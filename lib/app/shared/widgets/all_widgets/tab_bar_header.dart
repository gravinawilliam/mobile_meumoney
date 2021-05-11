import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../constants/constants.dart';
import '../widgets_globais.dart';

class TabBarHeader extends StatelessWidget {
  final bool isModuleAuthenticate;

  const TabBarHeader({
    required this.isModuleAuthenticate,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      width: SizeConst.screenWidth,
      height: SizeConst.screenHeight * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonTab(
            title: "Login",
            isSelect: isModuleAuthenticate ? true : false,
            onTap: isModuleAuthenticate
                ? () {}
                : () => Modular.to.pushNamed(
                      AppRoutersConst.authenticate,
                    ),
          ),
          ButtonTab(
            title: "Cadastro",
            isSelect: !isModuleAuthenticate ? true : false,
            onTap: !isModuleAuthenticate
                ? () {}
                : () => Modular.to.pushNamed(
                      AppRoutersConst.register,
                    ),
          ),
        ],
      ),
    );
  }
}
