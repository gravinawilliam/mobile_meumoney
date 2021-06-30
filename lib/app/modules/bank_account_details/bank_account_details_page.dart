import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/widgets_globais.dart';
import '../transactions/widgets/transaction_widgets.dart';
import 'bank_account_details_store.dart';

class BankAccountDetailsPage extends StatefulWidget {
  final BankAccountModel bankAccount;

  const BankAccountDetailsPage({
    required this.bankAccount,
  });

  @override
  BankAccountDetailsPageState createState() => BankAccountDetailsPageState();
}

class BankAccountDetailsPageState
    extends ModularState<BankAccountDetailsPage, BankAccountDetailsStore> {
  @override
  Widget build(BuildContext context) {
    var sizeHeightCard = SizeConst.screenWidth * 0.5;
    var sizeWidthCard =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    store.getTransactions(
      bankAccountId: widget.bankAccount.id,
    );
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: Icon(
            EvaIcons.arrowLeft,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Modular.to.pushNamed(
              AppRoutersConst.editBankAccount,
              arguments: widget.bankAccount,
            ),
            icon: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CreditCardWidget(
            bankAccount: widget.bankAccount,
            sizeHeightCard: sizeHeightCard,
            sizeWidthCard: sizeWidthCard,
          ),
          Observer(
            builder: (_) => Container(
              margin: EdgeInsets.only(
                top: SizeConst.paddingVertical,
              ),
              height: SizeConst.screenHeight -
                  sizeHeightCard -
                  6 * SizeConst.paddingVertical -
                  SizeConst.statusBar,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: store.transactionsList.length,
                itemBuilder: (context, index) {
                  var transaction = store.transactionsList[index];
                  return Container(
                    margin: EdgeInsets.only(
                      left: SizeConst.paddingHorizontal,
                      right: SizeConst.paddingHorizontal,
                      top: SizeConst.paddingVertical * 0.7,
                    ),
                    padding: EdgeInsets.only(
                      top: SizeConst.paddingVertical * 0.7,
                      bottom: index == store.transactionsList.length
                          ? SizeConst.paddingVertical * 3
                          : 0,
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
                            onPressed: () => store.deleteTransaction(
                              transanctionId: transaction.id,
                              bankAccountId: widget.bankAccount.id,
                            ),
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
