import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'bank_account_details_store.dart';

class BankAccountDetailsPage extends StatefulWidget {
  final BankAccountModel bankAccount;

  const BankAccountDetailsPage({
    required this.bankAccount,
  });

  @override
  BankAccountDetailsPageState createState() => BankAccountDetailsPageState();
}

class BankAccountDetailsPageState
    extends ModularState<BankAccountDetailsPage, BankAccountDetailsStore> {
  @override
  Widget build(BuildContext context) {
    var sizeHeightCard = SizeConst.screenWidth * 0.5;
    var sizeWidthCard =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => Modular.to.pushNamed(
              AppRoutersConst.createEditBankAccount,
              arguments: widget.bankAccount,
            ),
            icon: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: ScrollBody(
        children: <Widget>[
          CreditCardWidget(
            bankAccount: widget.bankAccount,
            sizeHeightCard: sizeHeightCard,
            sizeWidthCard: sizeWidthCard,
          ),
        ],
      ),
    );
  }
}
