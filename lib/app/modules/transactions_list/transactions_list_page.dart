import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobile_meumoney/app/shared/constants/constants.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/scroll_body.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/subtitle_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/week_day_widget.dart';

import 'transactions_list_store.dart';

class TransactionsListPage extends StatefulWidget {
  String? primeiraMetade;
  String? segundaMetade;

  @override
  TransactionsListPageState createState() => TransactionsListPageState();
}

class TransactionsListPageState
    extends ModularState<TransactionsListPage, TransactionsListStore> {
  final TransactionsListStore store = Modular.get();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          SizeConst().init(context);
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
              vertical: SizeConst.paddingVertical,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            SizeConst.paddingHorizontal / 2.5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFCC444B).withOpacity(
                              0.8,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Icon(
                            EvaIcons.arrowIosDownward,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubtitleWidget(
                              subTitle: "Paguei os 50 reais",
                              hasMarginVertical: false,
                            ),
                            SubtitleWidget(
                              subTitle: "Bens",
                              hasMarginVertical: false,
                              fontFamily: FontsConst.light,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SubtitleWidget(
                      subTitle: "25/05/2021",
                      fontSize: 10,
                      fontFamily: FontsConst.regular,
                      hasMarginVertical: false,
                      hasMarginHorizontal: false,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.withOpacity(
                    0.8,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
