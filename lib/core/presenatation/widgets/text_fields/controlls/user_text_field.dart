import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';

class AppUserTextField extends StatelessWidget {
  const AppUserTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textFieldBackground,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none,
            ),
            labelText: 'Username or Email',
            labelStyle: AppTextStyle.labelText
                .copyWith(color: AppColors.textFieldHint)),
      ),
    );
  }
}
