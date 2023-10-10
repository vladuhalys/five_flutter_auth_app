import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.color});
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color));
  }
}
