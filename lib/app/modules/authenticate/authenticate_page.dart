import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'authenticate_store.dart';

class AuthenticatePage extends StatefulWidget {
  @override
  AuthenticatePageState createState() => AuthenticatePageState();
}

class AuthenticatePageState
    extends ModularState<AuthenticatePage, AuthenticateStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        children: <Widget>[
          HeaderLogo(),
          TabBarHeader(
            isModuleAuthenticate: true,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: SizeConst.paddingVertical,
            ),
            height: SizeConst.screenHeight * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTextFormFields(
                  hintText: "Email",
                  enable: store.enableTextFormField,
                  onChanged: controller.setEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextFormFields(
                  hintText: "Senha",
                  obscureText: true,
                  enable: store.enableTextFormField,
                  onChanged: controller.setPassword,
                  keyboardType: TextInputType.visiblePassword,
                ),
                LoadingButton(
                  onPressed: () => store.login(),
                  title: "Entrar",
                  btnController: store.btnController,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
