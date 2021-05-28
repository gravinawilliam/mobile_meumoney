import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import 'widgets/all_widgets/tab_bar_content_transaction/tab_bar_content__transaction_widget.dart';

class CreateTransactionPage extends StatefulWidget {
  @override
  _CreateTransactionPageState createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 15,
            ),
            physics: NeverScrollableScrollPhysics(),
            indicatorColor: DarkColorsConst.primary,
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: "Ganho",
              ),
              Tab(
                text: "Despesa",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabBarContentTransactionWidget(),
            TabBarContentTransactionWidget(),
          ],
        ),
      ),
    );
  }
}
