import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/constants.dart';
import '../../../../shared/models/models.dart';

class StatusTransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const StatusTransactionItem({
    required this.transaction,
  });
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      padding: EdgeInsets.all(
        SizeConst.paddingHorizontal / 2.5,
      ),
      decoration: BoxDecoration(
        color: transaction.transactionType == "gain"
            ? DarkColorsConst.primary
            : Color(0xFFCC444B).withOpacity(
                0.8,
              ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Icon(
        transaction.transactionType == "gain"
            ? EvaIcons.arrowIosUpward
            : EvaIcons.arrowIosDownward,
        color: Colors.white,
      ),
    );
  }
}
