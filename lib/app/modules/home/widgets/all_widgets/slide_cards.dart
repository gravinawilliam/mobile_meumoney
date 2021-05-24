import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';
import '../../../../shared/widgets/all_widgets/credit_card/credit_card_widget.dart';
import '../../home_store.dart';

class SlideCards extends StatefulWidget {
  final List<BankAccountModel> bankAccouts;
  final bool hasMarginTop;
  final bool hasOnTap;
  final bool valuesVisible;

  const SlideCards({
    required this.bankAccouts,
    this.valuesVisible = true,
    this.hasMarginTop = false,
    this.hasOnTap = true,
  });

  @override
  _SlideCardsState createState() => _SlideCardsState();
}

class _SlideCardsState extends ModularState<SlideCards, HomeStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.43;
    return Visibility(
      visible: widget.bankAccouts.isNotEmpty,
      child: Container(
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
            onPageChanged: (index, reason) => controller.changedCard(
              index: index,
            ),
          ),
          itemCount: widget.bankAccouts.length,
          itemBuilder: (context, index, int) {
            var bankAccountModel = widget.bankAccouts[index];
            return Observer(
              builder: (_) => CreditCardWidget(
                sizeWidthCard:
                    SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal),
                bankAccount: bankAccountModel,
                sizeHeightCard: sizeHeightCard,
                valuesVisible: widget.valuesVisible,
              ),
            );
          },
        ),
      ),
    );
  }
}
