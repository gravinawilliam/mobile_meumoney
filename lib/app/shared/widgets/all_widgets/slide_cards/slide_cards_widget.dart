import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../constants/constants.dart';
import '../../../models/models.dart';
import '../../widgets_globais.dart';
import '../card_add_account.dart';
import 'slide_cards_store.dart';

class SlideCardsWidget extends StatefulWidget {
  final List<BankAccountModel>? bankAccouts;
  final bool hasMarginTop;
  final bool hasOnTap;
  final bool valuesVisible;

  const SlideCardsWidget({
    required this.bankAccouts,
    this.hasMarginTop = false,
    this.hasOnTap = false,
    this.valuesVisible = true,
  });

  @override
  _SlideCardsWidgetState createState() => _SlideCardsWidgetState();
}

class _SlideCardsWidgetState
    extends ModularState<SlideCardsWidget, SlideCardsStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.43;
    return widget.bankAccouts!.isEmpty
        ? CardAddAccount(
            sizeHeightCard: sizeHeightCard,
          )
        : widget.bankAccouts!.length == 1
            ? Container(
                alignment: Alignment.center,
                height: sizeHeightCard,
                margin: EdgeInsets.only(
                  top: widget.hasMarginTop ? SizeConst.paddingVertical : 0,
                ),
                child: Observer(
                  builder: (_) => CreditCardWidget(
                    sizeWidthCard: SizeConst.screenWidth -
                        (3 * SizeConst.paddingHorizontal),
                    bankAccount: widget.bankAccouts![0],
                    sizeHeightCard: sizeHeightCard,
                    valuesVisible: widget.valuesVisible,
                  ),
                ),
              )
            : Container(
                height: sizeHeightCard,
                margin: EdgeInsets.only(
                  top: widget.hasMarginTop ? SizeConst.paddingVertical : 0,
                ),
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: SizeConst.screenHeight,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) => store.changedCard(
                      index: index,
                    ),
                  ),
                  itemCount: widget.bankAccouts!.length,
                  itemBuilder: (context, index, int) {
                    var bankAccountModel = widget.bankAccouts![index];
                    return CreditCardWidget(
                      sizeWidthCard: SizeConst.screenWidth -
                          (3 * SizeConst.paddingHorizontal),
                      bankAccount: bankAccountModel,
                      sizeHeightCard: sizeHeightCard,
                      valuesVisible: widget.valuesVisible,
                    );
                  },
                ),
              );
  }
}
