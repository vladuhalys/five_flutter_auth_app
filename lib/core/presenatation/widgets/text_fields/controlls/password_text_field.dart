import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';

class AppPasswordTextField extends StatelessWidget {
  const AppPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width - 64,
      child: TextField(
        obscureText: true,
        decoration: AppTextFieldsStyle.passwordInput,
      ),
    );
  }
}
