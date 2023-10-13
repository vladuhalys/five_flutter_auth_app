import 'package:five_flutter_auth_app/core/internal/theme/app_text_style/app_font_family.dart';
import 'package:flutter/material.dart';

import 'app_font_size.dart';
import 'app_font_weight.dart';

abstract class AppTextStyle {
  static const headerText = TextStyle(
      fontSize: AppFontSize.headerText,
      fontWeight: AppFontWeight.black,
      fontFamily: AppFontFamily.gilroy);
  static const headerError = headerText;

  static const buttonText = TextStyle(
      fontSize: AppFontSize.buttonText,
      fontWeight: AppFontWeight.bold,
      fontFamily: AppFontFamily.gilroy);
  static const hintText = TextStyle(
      fontSize: AppFontSize.hintText,
      fontWeight: AppFontWeight.medium,
      fontFamily: AppFontFamily.gilroy);
  static const labelText = TextStyle(
      fontSize: AppFontSize.labelText,
      fontWeight: AppFontWeight.medium,
      fontFamily: AppFontFamily.poppins);

  static const labelError = labelText;

  static const labelTextRegularPopinns = TextStyle(
      fontSize: AppFontSize.labelText,
      fontWeight: AppFontWeight.regular,
      fontFamily: AppFontFamily.poppins);
}
