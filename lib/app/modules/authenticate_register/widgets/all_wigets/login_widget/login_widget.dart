import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../shared/widgets/all_widgets/custom_text_form_fields.dart';
import '../../../../../shared/widgets/all_widgets/loading_button.dart';
import '../../../authenticate_register_store.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState
    extends ModularState<LoginWidget, AuthenticateRegisterStore> {
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextFormFields(
              hintText: "Email",
              enable: store.enableTextFormField,
              onChanged: store.setEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextFormFields(
              hintText: "Senha",
              obscureText: true,
              enable: store.enableTextFormField,
              onChanged: store.setPassword,
              keyboardType: TextInputType.visiblePassword,
            ),
            LoadingButton(
              onPressed: () => store.login(),
              title: "Entrar",
              btnController: store.btnController,
            ),
          ],
        ),
      );
}
