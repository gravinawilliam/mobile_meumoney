import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = 'RegisterPage'}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        children: <Widget>[
          HeaderLogo(),
          TabBarHeader(
            isModuleAuthenticate: false,
          ),
        ],
      ),
    );
  }
}
