import 'package:flutter/material.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';
import '../../../../shared/widgets/widgets_globais.dart';
import '../transaction_widgets.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  final int index;
  final int length;

  const TransactionItem({
    required this.transaction,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        left: SizeConst.paddingHorizontal,
        right: SizeConst.paddingHorizontal,
        top: SizeConst.paddingVertical * 0.7,
      ),
      padding: EdgeInsets.only(
        top: SizeConst.paddingVertical * 0.7,
        bottom: index == length ? SizeConst.paddingVertical * 3 : 0,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: index != 0
                ? Colors.grey.withOpacity(
                    0.8,
                  )
                : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              StatusTransactionItem(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
