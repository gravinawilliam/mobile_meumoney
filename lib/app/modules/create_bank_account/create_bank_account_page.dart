import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'create_bank_account_store.dart';

class CreateBankAccountPage extends StatefulWidget {
  @override
  CreateBankAccountPageState createState() => CreateBankAccountPageState();
}

class CreateBankAccountPageState
    extends ModularState<CreateBankAccountPage, CreateBankAccountStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.5;
    var sizeWidthCard =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: Icon(
            EvaIcons.arrowLeft,
          ),
        ),
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          "Adicione sua conta bancária",
        ),
        centerTitle: true,
      ),
      body: Observer(
        builder: (_) => ScrollBody(
          hasMargin: false,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: SizeConst.paddingVertical,
              ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        alignment: Alignment.topRight,
                        width: SizeConst.screenWidth / 2,
                        child: AutoSizeText(
                          store.getbalance(
                            balance: store.balance,
                            symbolCoin: "BRL",
                          ),
                          style: TextStyle(
                            fontFamily: FontsConst.bold,
                            fontSize: 16,
                            letterSpacing: 1,
                            color: Colors.white.withOpacity(0.8),
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
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
            Observer(
              builder: (_) {
                if (store.banksList.isEmpty) {
                  return Container(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: SizeConst.paddingVertical,
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: store.banksList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var bank = store.banksList[index];
                        return Observer(
                          builder: (_) => GestureDetector(
                            onTap: () => store.setBank(index),
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: index == 0
                                    ? SizeConst.paddingHorizontal
                                    : 0,
                                right: SizeConst.paddingHorizontal,
                              ),
                              height: 50,
                              width: SizeConst.screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: store.selectedIndexBank == index
                                    ? DarkColorsConst.primary
                                    : DarkColorsConst.accent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                bank.name,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              },
            ),
            CustomTextFormFields(
              hasMargin: true,
              hintText: "Valor",
              onChanged: store.setBalance,
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            CustomTextFormFields(
              hasMargin: true,
              hintText: "Titular",
              onChanged: store.setCardHolderName,
              keyboardType: TextInputType.text,
            ),
            CustomTextFormFields(
              hasMargin: true,
              hintText: "Últimos numeros do cartão",
              onChanged: store.setAccountNumbers,
              maxLength: 4,
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CustomTextFormFields(
                    hasMargin: true,
                    hintText: "Mês",
                    onChanged: store.setMonthValidity,
                    maxLength: 2,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: CustomTextFormFields(
                    hasMargin: true,
                    hintText: "Ano",
                    onChanged: store.setYearValidity,
                    maxLength: 2,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConst.paddingHorizontal,
              ),
              child: LoadingButton(
                onPressed: () => store.createBankAccount(),
                title: "Entrar",
                btnController: store.btnController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
