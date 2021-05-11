import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'accounts_store.dart';

class AccountsPage extends StatefulWidget {
  final String title;
  const AccountsPage({Key? key, this.title = 'AccountsPage'}) : super(key: key);
  @override
  AccountsPageState createState() => AccountsPageState();
}

class AccountsPageState extends State<AccountsPage> {
  final AccountsStore store = Modular.get();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[Text("ACcounts")],
        ),
      );
}
