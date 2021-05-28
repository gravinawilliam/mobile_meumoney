import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    final f = DateFormat('dd/MM');
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
      child: InkWell(
        onTap: () => showAdaptiveActionSheet(
          context: context,
          actions: <BottomSheetAction>[
            BottomSheetAction(
              title: Text(
                "Apagar",
              ),
              onPressed: () {},
            ),
            BottomSheetAction(
              title: Text(
                "Editar",
              ),
              onPressed: () {},
            ),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StatusTransactionItem(
              transactionType: transaction.transactionType,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubtitleWidget(
                  subTitle: transaction.title,
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
      ),
    );
  }
}
