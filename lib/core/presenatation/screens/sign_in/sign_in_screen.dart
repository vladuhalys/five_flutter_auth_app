import 'package:five_flutter_auth_app/core/internal/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/same_for_screen/same_for_screen_exports.dart';
import 'sign_in_exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: SafeArea(
          child: Column(
            children: [
              SignInUpText(text: AppHeaders.welcome),
              SignInFields(),
              SignInButtonLine(),
              SignInWithButtons(),
            ],
          ),
        ));
  }
}
