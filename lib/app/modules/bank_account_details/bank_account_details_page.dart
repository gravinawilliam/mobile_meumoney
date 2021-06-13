import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
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
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.greenAccent,
            height: 100,
            width: 100,
          ),
          Text(
            "BP ${widget.bankAccount.cardholderName}",
          ),
        ],
      ),
    );
  }
}
