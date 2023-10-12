import 'package:flutter/material.dart';
import 'app_text_export.dart';

class AppText extends StatelessWidget {
  late final Widget textControll;
  final String text;
  AppText.errorOnButton({super.key, required this.text}) {
    textControll = AppTextErrorOnButton(text: text);
  }
  AppText.appTextScreenHeader({super.key, required this.text}) {
    textControll = AppTextScreenHeader(text: text);
  }

  @override
  Widget build(BuildContext context) {
    return textControll;
  }
}
