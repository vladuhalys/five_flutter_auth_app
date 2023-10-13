import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInButtonLine extends StatelessWidget {
  const SignInButtonLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AppButton.textLarge(
            onPressed: () => Get.offAndToNamed(AppRouts.signIn),
            child: AppText.signUpForButton(text: AppLabels.signUpForButton)),
        AppButton.roundedFill(
            onPressed: () => Get.offAndToNamed(AppRouts.home),
            child: AppText.signInWith(text: AppLabels.signInForButton)),
      ]),
    );
  }
}
