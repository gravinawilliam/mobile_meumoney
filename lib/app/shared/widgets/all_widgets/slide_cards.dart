import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../modules/home/home_store.dart';
import '../../constants/constants.dart';
import '../../models/models.dart';
import 'credit_card/credit_card_widget.dart';

class SlideCards extends StatefulWidget {
  final List<BankAccountModel> bankAccouts;
  final bool hasMarginTop;
  final bool hasOnTap;

  const SlideCards({
    required this.bankAccouts,
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
    var sizeHeightCard = SizeConst.screenHeight * 0.2;
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
          itemBuilder: (context, index, i) {
            var bankAccountModel = widget.bankAccouts[index];
            return GestureDetector(
              onTap: widget.hasOnTap ? () {} : () {},
              child: CreditCardWidget(
                sizeWidthCard:
                    SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal),
                bankAccount: bankAccountModel,
                sizeHeightCard: sizeHeightCard,
              ),
            );
          },
        ),
      ),
    );
  }
}
