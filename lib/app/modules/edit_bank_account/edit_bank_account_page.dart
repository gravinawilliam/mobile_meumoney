import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/all_models/bank_account_model.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'edit_bank_account_store.dart';

class EditBankAccountPage extends StatefulWidget {
  final BankAccountModel bankAccount;

  const EditBankAccountPage({
    required this.bankAccount,
  });

  @override
  EditBankAccountPageState createState() => EditBankAccountPageState();
}

class EditBankAccountPageState
    extends ModularState<EditBankAccountPage, EditBankAccountStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.5;
    var sizeWidthCard =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: Icon(
            EvaIcons.arrowLeft,
          ),
        ),
        title: Text("Editar conta"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ScrollBody(
        children: <Widget>[
          CreditCardWidget(
            bankAccount: widget.bankAccount,
            sizeHeightCard: sizeHeightCard,
            sizeWidthCard: sizeWidthCard,
          ),
          CustomTextFormFields(
            initialValue: widget.bankAccount.balance.toString(),
            hintText: "Valor",
            onChanged: (value) {},
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          CustomTextFormFields(
            initialValue: widget.bankAccount.cardholderName,
            hintText: "Titular",
            onChanged: (value) {},
            keyboardType: TextInputType.name,
          ),
          CustomTextFormFields(
            initialValue: widget.bankAccount.accountNumbers,
            hintText: "Últimos numeros do cartão",
            onChanged: (value) {},
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: CustomTextFormFields(
                  initialValue: widget.bankAccount.monthValidity.toString(),
                  hasMargin: true,
                  hintText: "Mês",
                  onChanged: (value) {},
                  maxLength: 2,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: CustomTextFormFields(
                  initialValue: widget.bankAccount.yearValidity.toString(),
                  hasMargin: true,
                  hintText: "Ano",
                  onChanged: (value) {},
                  maxLength: 2,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
