import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';

class AppTextErrorOnButton extends StatelessWidget {
  final String text;
  const AppTextErrorOnButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            AppTextStyle.labelText.copyWith(color: AppColors.errorLabelDark));
  }
}
