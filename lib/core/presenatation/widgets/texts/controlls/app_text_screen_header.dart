import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';

class AppTextScreenHeader extends StatelessWidget {
  final String text;
  const AppTextScreenHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppTextStyle.headerText
            .copyWith(color: AppColors.primaryTextColor));
  }
}
