import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/constants.dart';

class CustomTextFormFields extends StatelessWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final String? labelText;
  final bool obscureText;
  final void Function(String)? onChanged;
  final TextAlign textAlign;
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
    this.hintFontsize = 15,
    required this.onChanged,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConst.paddingVertical * 0.6,
      ),
      child: TextFormField(
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
          hintStyle: TextStyle(
            fontSize: hintFontsize,
          ),
        ),
      ),
    );
  }
}
