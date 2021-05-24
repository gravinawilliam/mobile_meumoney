import 'package:flutter/material.dart';
import 'package:mobile_meumoney/app/modules/create_transaction/widgets/all_widgets/tab_bar_content_transaction/tab_bar_content__transaction_widget.dart';
import 'package:mobile_meumoney/app/shared/constants/all_constants/colors_const.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';

class CreateTransactionPage extends StatefulWidget {
  @override
  _CreateTransactionPageState createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage> {
  @override
  Widget build(BuildContext context) {
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
