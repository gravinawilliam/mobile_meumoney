import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_meumoney/app/shared/constants/constants.dart';
import '../../constants/constants.dart';

class CustomTextFormFields extends StatelessWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final String? labelText;
  final bool obscureText;
  final void Function(String) onChanged;
  final String errorText;
  final TextAlign textAlign;
  final String initialValue;
  final double hintFontsize;
  final bool? enable;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormFields({
    this.hintText,
    this.labelText,
    this.enable,
    this.obscureText = false,
    this.maxLength,
    this.inputFormatters,
    this.textAlign = TextAlign.left,
    this.initialValue = "",
    this.hintFontsize = 15,
    required this.onChanged,
    required this.errorText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConst.paddingVertical * 0.6),
      child: TextFormField(
          initialValue: initialValue,
          textAlign: textAlign,
          enabled: enable,
          keyboardType: keyboardType,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          maxLength: maxLength,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: ThemesConst.authenticateTextFormField.copyWith(
            hintText: hintText,
            errorText: errorText,
            hintStyle: TextStyle(
              fontSize: hintFontsize,
            ),
          )),
    );
  }
}
