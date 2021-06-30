import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/widgets/widgets_globais.dart';
import 'create_transaction_store.dart';

class CreateTransactionPage extends StatefulWidget {
  @override
  _CreateTransactionPageState createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState
    extends ModularState<CreateTransactionPage, CreateTransactionStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var sizeHeightCard = SizeConst.screenWidth * 0.43;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: Icon(
            EvaIcons.arrowLeft,
          ),
        ),
      ),
      body: ScrollBody(
        hasMargin: false,
        children: [
          Container(
            height: sizeHeightCard,
            margin: EdgeInsets.only(
              top: SizeConst.paddingVertical,
            ),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: SizeConst.screenHeight,
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) => store.changedCard(
                  index: index,
                ),
              ),
              itemCount: UserModel.bankAccounts!.length,
              itemBuilder: (context, index, int) {
                var bankAccountModel = UserModel.bankAccounts![index];
                return GestureDetector(
                  onTap: () => Modular.to.pushNamed(
                    AppRoutersConst.bankAccountDetails,
                    arguments: bankAccountModel,
                  ),
                  child: CreditCardWidget(
                    sizeWidthCard: SizeConst.screenWidth -
                        (3 * SizeConst.paddingHorizontal),
                    bankAccount: bankAccountModel,
                    sizeHeightCard: sizeHeightCard,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: SizeConst.paddingHorizontal,
              right: SizeConst.paddingHorizontal,
              top: SizeConst.paddingVertical,
            ),
            child: CustomTextFormFields(
              textAlign: TextAlign.left,
              hintText: "Valor da transação",
              onChanged: store.setValueTransaction,
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: SizeConst.paddingHorizontal,
              right: SizeConst.paddingHorizontal,
            ),
            child: CustomTextFormFields(
              textAlign: TextAlign.left,
              hintText: "Titulo",
              onChanged: store.setTitle,
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            child: CustomTextFormFields(
              onChanged: store.setNote,
              keyboardType: TextInputType.text,
              hintText: "Descrição",
            ),
          ),
          SubtitleWidget(
            subTitle: "Selecione uma categoria",
          ),
          Observer(
            builder: (_) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConst.paddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => store.setTransactionType(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: SizeConst.screenWidth * 0.3,
                      decoration: BoxDecoration(
                        color: store.selectedIndexTransactionType == 0
                            ? DarkColorsConst.ganhos
                            : DarkColorsConst.accent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Ganhos",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => store.setTransactionType(1),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: SizeConst.screenWidth * 0.3,
                      decoration: BoxDecoration(
                        color: store.selectedIndexTransactionType == 1
                            ? DarkColorsConst.despesas
                            : DarkColorsConst.accent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Despesas",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: SizeConst.paddingHorizontal,
              right: SizeConst.paddingHorizontal,
              top: SizeConst.paddingVertical,
            ),
            child: ScrollDatePicker(
              controller: store.dateController,
              locale: DatePickerLocale.en_us,
              height: SizeConst.screenHeight * 0.15,
              pickerDecoration: BoxDecoration(
                border: Border.all(
                  color: DarkColorsConst.primary,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              config: DatePickerConfig(
                isLoop: true,
                selectedTextStyle: TextStyle(
                  color: DarkColorsConst.primary,
                  fontSize: 17.0,
                ),
              ),
              onChanged: store.setDate,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            child: LoadingButton(
              onPressed: store.createTransaction,
              title: "Criar transação",
              btnController: store.buttonController,
            ),
          ),
        ],
      ),
    );
  }
}
