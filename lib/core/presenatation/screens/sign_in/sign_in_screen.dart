import 'package:five_flutter_auth_app/core/internal/theme/app_colors.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/text_fields.dart';
import 'package:flutter/material.dart';

import 'sign_in_exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: SafeArea(
          child: Column(
            children: [
              const SignInUpText(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  AppTextFields.user(),
                ]),
              ),
            ],
          ),
        ));
  }
}
