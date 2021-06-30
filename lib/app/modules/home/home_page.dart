import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/all_widgets/row_box_money/row_box_money_widget.dart';
import '../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../shared/widgets/all_widgets/title_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: Observer(
        builder: (_) => ScrollBody(
          hasMargin: false,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConst.paddingHorizontal,
                vertical: SizeConst.paddingVertical,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleWidget(
                    title: store.user.name,
                  ),
                  Observer(
                    builder: (_) => IconButton(
                      icon: Icon(
                        store.valuesVisible ? EvaIcons.eye : EvaIcons.eyeOff,
                        size: 30,
                      ),
                      onPressed: () => store.exchangeVisibility(),
                    ),
                  ),
                ],
              ),
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
                    subTitle: "${store.months[store.currentMonth - 1]} de 2021",
                    fontSize: 16,
                  ),
                  RowBoxMoney(
                    symbolCoin: "BRL",
                    transactionsList: store.transactionsList,
                    valuesVisible: store.valuesVisible,
                  ),
                ],
              ),
            ),
            SubtitleWidget(
              subTitle: "Câmbios",
              alignment: Alignment.topLeft,
            ),
            Observer(
              builder: (_) {
                if (store.exchangesList.isEmpty) {
                  return Container(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Container(
                    height: SizeConst.screenHeight * 0.15,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: store.exchangesList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var exchange = store.exchangesList[index];
                        store.setSymbolCoin(index);
                        return Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: index == 0 ? SizeConst.paddingHorizontal : 0,
                            right: SizeConst.paddingHorizontal,
                          ),
                          width: SizeConst.screenWidth * 0.3,
                          decoration: BoxDecoration(
                            color: DarkColorsConst.bottomBarUnselectedItemColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                exchange.name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: FontsConst.regular,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${exchange.symbol} 1",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: FontsConst.regular,
                                ),
                              ),
                              Text(
                                store.getbalance(
                                  balance: exchange.buy,
                                  symbolCoin: 'BRL',
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: FontsConst.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
