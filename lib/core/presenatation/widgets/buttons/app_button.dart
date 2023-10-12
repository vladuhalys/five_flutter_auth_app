import 'package:flutter/material.dart';

import 'app_buttons_exports.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  late final Widget button;
  final Function onPressed;
  AppButton.rounded({super.key, required this.onPressed, required this.child}) {
    button = AppRoundedButton(onPressed: onPressed, child: child);
  }
  AppButton.cirle({super.key, required this.onPressed, required this.child}) {
    button = AppCirlceButton(onPressed: onPressed, child: child);
  }
  @override
  Widget build(BuildContext context) {
    return button;
  }
}
