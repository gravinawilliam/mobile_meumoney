import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../constants/constants.dart';

class LoadingButton extends StatefulWidget {
  final void Function() onPressed;
  final String title;
  final RoundedLoadingButtonController btnController;

  const LoadingButton({
    required this.onPressed,
    required this.title,
    required this.btnController,
  });

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConst.paddingVertical,
      ),
      child: RoundedLoadingButton(
        width: SizeConst.screenWidth,
        successColor: Colors.green,
        color: Theme.of(context).primaryColor,
        errorColor: Colors.redAccent,
        child: Text(
          widget.title,
          style: TextStyle(
            color: DarkColorsConst.textPrimary,
            fontFamily: FontsConst.semiBold,
            fontSize: 20,
          ),
        ),
        controller: widget.btnController,
        onPressed: widget.onPressed,
      ),
    );
  }
}
