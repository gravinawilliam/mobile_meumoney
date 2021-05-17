import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'authenticate_register_store.dart';
import 'widgets/all_wigets/header_logo.dart';
import 'widgets/all_wigets/tab_bar_content.dart';
import 'widgets/all_wigets/tab_bar_header.dart';

class AuthenticateRegisterPage extends StatefulWidget {
  @override
  AuthenticateRegisterPageState createState() =>
      AuthenticateRegisterPageState();
}

class AuthenticateRegisterPageState
    extends ModularState<AuthenticateRegisterPage, AuthenticateRegisterStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        children: [
          HeaderLogo(),
          TabBarHeader(),
        ],
      ),
    );
  }
}
