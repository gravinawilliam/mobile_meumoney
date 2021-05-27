import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/models/all_models/user_model.dart';
import 'package:mobile_meumoney/app/shared/models/models.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/credit_card/credit_card_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/scroll_body.dart';

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
