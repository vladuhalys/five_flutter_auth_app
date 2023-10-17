import 'package:five_flutter_auth_app/core/internal/theme/app_text_field_style/app_text_field_style.dart';
import 'package:flutter/material.dart';

class AppConfirmPasswordTextField extends StatelessWidget {
  const AppConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: AppTextFieldsStyle.confirmPasswordInput,
    );
  }
}
