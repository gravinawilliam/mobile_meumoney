import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';

import 'edit_bank_account_store.dart';

class EditBankAccountPage extends StatefulWidget {
  @override
  EditBankAccountPageState createState() => EditBankAccountPageState();
}

class EditBankAccountPageState
    extends ModularState<EditBankAccountPage, EditBankAccountStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar conta"),
      ),
      body: ScrollBody(
        children: <Widget>[],
      ),
    );
  }
}
