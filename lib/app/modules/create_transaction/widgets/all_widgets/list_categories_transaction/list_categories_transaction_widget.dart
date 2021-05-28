import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../shared/constants/constants.dart';
import '../../../../../shared/widgets/widgets_globais.dart';
import 'list_categories_transaction_store.dart';

class ListCategoriesTransactionWidget extends StatefulWidget {
  @override
  _ListCategoriesTransactionWidgetState createState() =>
      _ListCategoriesTransactionWidgetState();
}

class _ListCategoriesTransactionWidgetState extends ModularState<
    ListCategoriesTransactionWidget, ListCategoriesTransactionStore> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConst.paddingVertical,
        right: SizeConst.paddingHorizontal,
        left: SizeConst.paddingHorizontal,
      ),
      width: SizeConst.screenWidthWithMargin,
      child: Column(
        children: [
          SubtitleWidget(
            subTitle: "Categorias",
          ),
        ],
      ),
    );
  }
}
