import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/constants.dart';
import '../../../models/models.dart';

import 'credit_card_store.dart';

class CreditCardWidget extends StatefulWidget {
  final BankAccountModel bankAccount;
  final double sizeHeightCard;
  final double sizeWidthCard;

  const CreditCardWidget({
    required this.bankAccount,
    required this.sizeHeightCard,
    required this.sizeWidthCard,
  });

  @override
  _CreditCardWidgetState createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState
    extends ModularState<CreditCardWidget, CreditCardStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);

    return Container(
      padding: EdgeInsets.all(10),
      height: widget.sizeHeightCard,
      width: widget.sizeWidthCard,
      decoration: BoxDecoration(
        color: Color.fromRGBO(
          widget.bankAccount.bank.redRgbColorCard,
          widget.bankAccount.bank.greenRgbColorCard,
          widget.bankAccount.bank.blueRgbColorCard,
          1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: widget.sizeWidthCard * 0.16,
                child: SvgPicture.network(
                  widget.bankAccount.bank.logoUrl,
                ),
              ),
              Container(
                height: 40,
                width: widget.sizeWidthCard * 0.55,
                alignment: Alignment.centerRight,
                child: AutoSizeText(
                  store.getbalance(
                    balance: widget.bankAccount.balance,
                    coin: widget.bankAccount.coin,
                  ),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: FontsConst.regular,
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  maxFontSize: 20,
                  minFontSize: 10,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "xxxx xxxx xxxx ${widget.bankAccount.accountNumbers}",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Titular",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: widget.sizeWidthCard * 0.7,
                    child: AutoSizeText(
                      widget.bankAccount.cardholderName,
                      style: TextStyle(
                        fontFamily: FontsConst.semiBold,
                        letterSpacing: 1,
                        fontSize: 18,
                      ),
                      minFontSize: 12,
                      maxFontSize: 15,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: widget.sizeWidthCard * 0.15,
                    child: Text(
                      "${widget.bankAccount.monthValidity}/${widget.bankAccount.yearValidity}",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
