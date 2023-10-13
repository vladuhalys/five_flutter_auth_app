import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';

class AppUserTextField extends StatelessWidget {
  const AppUserTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width - 64,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: AppTextFieldsStyle.userInput,
      ),
    );
  }
}
