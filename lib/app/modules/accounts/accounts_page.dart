import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/all_widgets/subtitle_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import '../home/widgets/home_widgets.dart';
import 'accounts_store.dart';

class AccountsPage extends StatefulWidget {
  @override
  AccountsPageState createState() => AccountsPageState();
}

class AccountsPageState extends ModularState<AccountsPage, AccountsStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        hasMargin: false,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
              vertical: SizeConst.paddingVertical,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SubtitleWidget(
                  hasMarginHorizontal: false,
                  subTitle: "Contas",
                ),
                IconButton(
                  onPressed: () => Modular.to.pushNamed(
                    AppRoutersConst.createEditBankAccount,
                  ),
                  icon: Icon(
                    EvaIcons.plusSquareOutline,
                  ),
                ),
              ],
            ),
          ),
          SlideCards(
            bankAccouts: store.user.bankAccounts,
          ),
        ],
      ),
    );
  }
}
