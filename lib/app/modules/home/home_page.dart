import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import '../../shared/constants/constants.dart';
import '../../shared/widgets/all_widgets/row_box_money/row_box_money_widget.dart';
import '../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'home_store.dart';
import 'widgets/home_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    List months = [
      'jan',
      'feb',
      'mar',
      'apr',
      'may',
      'jun',
      'jul',
      'aug',
      'sep',
      'oct',
      'nov',
      'dec'
    ];
    var now = DateTime.now();
    var current_mon = now.month;
    print(months[current_mon - 1]);
    SizeConst().init(context);
    return Scaffold(
      body: Observer(
        builder: (_) => ScrollBody(
          hasMargin: false,
          children: [
            HeaderHome(
              user: store.user,
            ),
            SlideCardsWidget(
              valuesVisible: store.valuesVisible,
              bankAccouts: store.bankAccouts ?? [],
            ),
            Container(
              width: SizeConst.screenWidthWithMargin,
              child: Column(
                children: [
                  SubtitleWidget(
                    hasMarginHorizontal: false,
                    alignment: Alignment.center,
                    subTitle: "${months[current_mon - 1]} de 2021",
                    fontSize: 16,
                  ),
                  RowBoxMoney(
                    symbolCoin: "BRL",
                    expensesMonth: store.expensesMonth,
                    gainsMonth: store.gainsMonth,
                  ),
                ],
              ),
            ),
            SubtitleWidget(
              subTitle: "Transações",
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
