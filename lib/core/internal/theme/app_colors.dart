import 'package:flutter/material.dart';

abstract class AppColors {
  static const primaryBackground = Color(0xFF1D1D1D);

  static const secondaryBackground = Color(0xFF626262);
  static const textFieldForeground = secondaryBackground;
  static const textFieldIcon = secondaryBackground;
  static const textFieldHint = secondaryBackground;

  static const secondaryTextColor = Color(0xFF676767);

  static const primaryButton = Color(0xFFFF4B26);
  static const highlightTextColor = primaryButton;
  static const errorText = primaryButton;
  static const errorIcon = primaryButton;
  static const errorButton = primaryButton;

  static const primaryTextColor = Color(0xFFFFFFFF);
  static const primaryTextButton = primaryTextColor;
  static const errorBackground = primaryTextColor;
  static const errorLabel = primaryTextColor;
  static const errorButtonText = primaryTextColor;

  static const textFieldBackground = Color(0xFF262626);
  static const errorLabelDark = textFieldBackground;
}
