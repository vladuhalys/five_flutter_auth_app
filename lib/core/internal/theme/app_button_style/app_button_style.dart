import 'package:flutter/material.dart';

import '../app_colors.dart';

abstract class AppButtonStyle {
  static final cirlce = ButtonStyle(
    shape: MaterialStateProperty.all(const CircleBorder()),
    backgroundColor: MaterialStateProperty.all(AppColors.primaryButton),
    fixedSize: MaterialStateProperty.all(const Size(50, 50)),
    elevation: MaterialStateProperty.all(7),
  );
  static final rounded = ButtonStyle(
    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
        side: BorderSide(width: 3.0, color: AppColors.primaryButton),
        borderRadius: BorderRadius.all(Radius.circular(15)))),
    backgroundColor: MaterialStateProperty.all(AppColors.primaryTextColor),
    fixedSize: MaterialStateProperty.all(const Size(100, 30)),
    elevation: MaterialStateProperty.all(7),
  );
  static const text = ButtonStyle();
  static const error = ButtonStyle();
}
