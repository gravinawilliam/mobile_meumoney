import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_meumoney/app/modules/create_transaction/widgets/all_widgets/list_categories_transaction/list_categories_transaction_widget.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/custom_text_form_fields.dart';
import 'package:mobile_meumoney/app/shared/widgets/all_widgets/loading_button.dart';

import '../../../../../shared/widgets/widgets_globais.dart';
import '../../../../home/widgets/home_widgets.dart';
import 'tab_bar_content_transaction_store.dart';

class TabBarContentTransactionWidget extends StatefulWidget {
  @override
  _TabBarContentTransactionWidgetState createState() =>
      _TabBarContentTransactionWidgetState();
}

class _TabBarContentTransactionWidgetState extends ModularState<
    TabBarContentTransactionWidget, TabBarContentTransactionStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      body: ScrollBody(
        hasMargin: false,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConst.paddingVertical,
            ),
            child: SlideCards(
              bankAccouts: store.user.bankAccounts,
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
              onChanged: null,
              errorText: null,
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
              onChanged: null,
              errorText: null,
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            child: CustomTextFormFields(
              onChanged: null,
              errorText: null,
              keyboardType: TextInputType.text,
              hintText: "Descrição",
            ),
          ),
          ListCategoriesTransactionWidget(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            child: LoadingButton(
              onPressed: () {},
              title: "Criar transação",
              btnController: store.buttonController,
            ),
          ),
        ],
      ),
    );
  }
}
