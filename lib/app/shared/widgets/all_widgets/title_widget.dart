import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../constants/all_constants/fonts_const.dart';

class TitleWidget extends StatefulWidget {
  final String title;

  const TitleWidget({required this.title});
  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) => AutoSizeText(
        widget.title,
        style: TextStyle(
          fontFamily: FontsConst.bold,
          fontSize: 20,
        ),
        minFontSize: 12,
      );
}
