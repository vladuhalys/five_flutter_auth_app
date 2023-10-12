import 'package:flutter/material.dart';

import 'text_fields_exports.dart';

class AppTextFields extends StatelessWidget {
  late final Widget button;

  AppTextFields.user({super.key}) {
    button = const AppUserTextField();
  }
  AppTextFields.password({super.key}) {
    button = Placeholder();
  }
  @override
  Widget build(BuildContext context) {
    return button;
  }
}
