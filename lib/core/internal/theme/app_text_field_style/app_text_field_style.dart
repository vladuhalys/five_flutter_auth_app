import 'package:flutter/material.dart';

import '../../../presenatation/widgets/widget_exports.dart';
import '../theme.dart';

abstract class AppTextFieldsStyle {
  static final InputDecoration userInput = InputDecoration(
      filled: true,
      fillColor: AppColors.textFieldBackground,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide.none,
      ),
      prefixIcon: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AppIcons.user,
      ),
      labelText: AppTextFieldLabels.usernameOrEmail,
      labelStyle:
          AppTextStyle.labelText.copyWith(color: AppColors.textFieldHint));

  static final passwordInput = userInput.copyWith(
      prefixIcon: Padding(
        padding: const EdgeInsets.all(15),
        child: AppIcons.password,
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(10),
        child: AppIcons.eye,
      ),
      labelText: AppTextFieldLabels.password);
  static final confirmPasswordInput =
      passwordInput.copyWith(labelText: AppTextFieldLabels.confirmPassword);
}
