import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/constants.dart';
import '../../../models/models.dart';

import 'credit_card_controller.dart';

class CreditCardWidget extends StatefulWidget {
  final BankAccountModel bankAccount;
  final double sizeHeightCard;
  final double sizeWidthCard;
  final bool valuesVisible;

  const CreditCardWidget({
    required this.bankAccount,
    required this.sizeHeightCard,
    required this.sizeWidthCard,
    this.valuesVisible = true,
  });

  @override
  _CreditCardWidgetState createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState
    extends ModularState<CreditCardWidget, CreditCardController> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      padding: EdgeInsets.all(10),
      height: widget.sizeHeightCard,
      width: widget.sizeWidthCard,
      decoration: BoxDecoration(
        color: Color.fromRGBO(
          widget.bankAccount.bank.redColorCard,
          widget.bankAccount.bank.greenColorCard,
          widget.bankAccount.bank.blueColorCard,
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
                child: widget.bankAccount.bank.logoUrl != ''
                    ? SvgPicture.network(
                        widget.bankAccount.bank.logoUrl,
                      )
                    : Container(),
              ),
              Container(
                height: 40,
                width: widget.sizeWidthCard * 0.55,
                alignment: Alignment.centerRight,
                child: AutoSizeText(
                  widget.valuesVisible
                      ? controller.getbalance(
                          balance: widget.bankAccount.balance,
                          symbolCoin: widget.bankAccount.symbolCoin,
                        )
                      : "XX,XX",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: FontsConst.bold,
                    fontSize: 15,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                  minFontSize: 8,
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
                    color: Colors.white.withOpacity(0.7),
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
                      ),
                      minFontSize: 12,
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
