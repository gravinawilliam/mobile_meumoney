import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/credit_card/credit_card_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/week_day_widget.dart';
import '../../shared/widgets/widgets_globais.dart';

import 'accountDetail_store.dart';

class AccountDetailPage extends StatefulWidget {
  @override
  AccountDetailPageState createState() => AccountDetailPageState();
}

class AccountDetailPageState extends State<AccountDetailPage> {
  final AccountDetailStore store = Modular.get();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ScrollBody(
          children: [
            WeekDayWidget(),
          ],
        ),
      );
}
