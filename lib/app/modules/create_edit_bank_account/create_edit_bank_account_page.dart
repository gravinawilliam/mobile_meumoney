import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/all_widgets/title_widget.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'create_edit_bank_account_store.dart';

class CreateEditBankAccountPage extends StatefulWidget {
  final BankAccountModel? bankAccount;

  const CreateEditBankAccountPage({
    this.bankAccount,
  });

  @override
  _CreateEditBankAccountPageState createState() =>
      _CreateEditBankAccountPageState();
}

class _CreateEditBankAccountPageState extends ModularState<
    CreateEditBankAccountPage, CreateEditBankAccountStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.5;
    var sizeWidthCard =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TitleWidget(
          title: widget.bankAccount == null ? "Criar conta" : "Editar conta",
        ),
      ),
      body: ScrollBody(
        children: [
          Observer(
            builder: (_) => Container(
              padding: EdgeInsets.all(10),
              height: sizeHeightCard,
              width: sizeWidthCard,
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                  store.redCardColor,
                  store.greenCardColor,
                  store.blueCardColor,
                  1,
                ),
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Observer(
                        builder: (_) => Container(
                          height: 40,
                          width: sizeWidthCard * 0.16,
                          child: store.logoUrlBank == ""
                              ? null
                              : SvgPicture.network(
                                  store.logoUrlBank,
                                ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: sizeWidthCard * 0.55,
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          store.cardholderName,
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
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "XXXX XXXX XXXX ${store.accountNumbers}",
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
                            fontSize: 14,
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: sizeWidthCard * 0.7,
                            child: AutoSizeText(
                              store.cardholderName,
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
                            width: sizeWidthCard * 0.15,
                            child: Text(
                              store.monthValidity != '' ||
                                      controller.yearValidity != ''
                                  ? "${store.monthValidity}/${store.yearValidity}"
                                  : "",
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          CustomTextFormFields(
            hintText: "valor",
            onChanged: (value) {},
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          CustomTextFormFields(
            hintText: "Nome",
            onChanged: (value) {},
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          CustomTextFormFields(
            onChanged: (value) {},
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          LoadingButton(
            onPressed: () {},
            title: widget.bankAccount == null ? "Criar conta" : "Editar conta",
            btnController: store.buttonController,
          )
        ],
      ),
    );
  }
}
