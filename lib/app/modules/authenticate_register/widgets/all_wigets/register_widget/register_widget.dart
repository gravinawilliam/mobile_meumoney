import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../shared/widgets/all_widgets/custom_text_form_fields.dart';
import '../../../../../shared/widgets/all_widgets/loading_button.dart';
import '../../../authenticate_register_store.dart';

class RegisterWidget extends StatefulWidget {
  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState
    extends ModularState<RegisterWidget, AuthenticateRegisterStore> {
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextFormFields(
              hintText: "Nome",
              enable: store.enableTextFormField,
              onChanged: store.setRegisterName,
              keyboardType: TextInputType.text,
            ),
            CustomTextFormFields(
              hintText: "Email",
              enable: store.enableTextFormField,
              onChanged: store.setRegisterEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextFormFields(
              hintText: "Senha",
              obscureText: true,
              enable: store.enableTextFormField,
              onChanged: store.setRegisterPassword,
              keyboardType: TextInputType.visiblePassword,
            ),
            LoadingButton(
              onPressed: () => store.register(),
              title: "Cadastrar",
              btnController: store.btnController,
            ),
          ],
        ),
      );
}
