import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/all_constants/themes_const.dart' as theme;
import '../../constants/constants.dart';

class CustomTextFormFields extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function(String) onChanged;
  final String? errorText;
  final bool enable;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormFields({
    required this.hintText,
    required this.enable,
    this.obscureText = false,
    this.inputFormatters,
    required this.onChanged,
    this.errorText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConst.paddingVertical * 0.6),
      child: TextFormField(
        enabled: enable,
        keyboardType: keyboardType,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: theme.authenticateTextFormField.copyWith(
          hintText: hintText,
          errorText: errorText,
        ),
      ),
    );
  }
}
