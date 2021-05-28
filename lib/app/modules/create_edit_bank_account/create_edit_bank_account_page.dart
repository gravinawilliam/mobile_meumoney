import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/widgets_globais.dart';

class CreateEditBankAccountPage extends StatefulWidget {
  final BankAccountModel? bankAccount;

  const CreateEditBankAccountPage({
    this.bankAccount,
  });

  @override
  _CreateEditBankAccountPageState createState() =>
      _CreateEditBankAccountPageState();
}

class _CreateEditBankAccountPageState extends State<CreateEditBankAccountPage> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.bankAccount == null ? "Criar conta" : "Editar conta",
        ),
      ),
      body: ScrollBody(
        children: [],
      ),
    );
  }
}
