import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/all_widgets/title_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'create_edit_bank_account_store.dart';

class CreateEditBankAccountPage extends StatefulWidget {
  final BankAccountModel? bankAccount;

  const CreateEditBankAccountPage({
    this.bankAccount,
  });

  @override
  _CreateEditBankAccountPageState createState() =>
      _CreateEditBankAccountPageState();
}

class _CreateEditBankAccountPageState extends ModularState<
    CreateEditBankAccountPage, CreateEditBankAccountStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.43;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TitleWidget(
          title: widget.bankAccount == null ? "Criar conta" : "Editar conta",
        ),
      ),
      body: ScrollBody(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: SizeConst.paddingVertical,
            ),
            child: CreditCardWidget(
              bankAccount: store.user.bankAccounts.first,
              sizeHeightCard: sizeHeightCard,
              sizeWidthCard:
                  SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal),
            ),
          ),
          CustomTextFormFields(
            hintText: "valor",
            onChanged: (value) {},
            errorText: "",
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          CustomTextFormFields(
            hintText: "Nome",
            onChanged: (value) {},
            errorText: "",
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          CustomTextFormFields(
            onChanged: (value) {},
            errorText: "",
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
        ],
      ),
    );
  }
}
