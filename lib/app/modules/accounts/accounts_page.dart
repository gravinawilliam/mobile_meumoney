import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/accounts/accounts_store.dart';
import 'package:mobile_meumoney/app/modules/home/widgets/home_widgets.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/subtitle_widget.dart';
import 'package:mobile_meumoney/app/shared/widgets/widgets_globais.dart';

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
                onPressed: () {},
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
    ));
  }
}
