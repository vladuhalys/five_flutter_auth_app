import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_controller.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../internal/routs/app_routs.dart';
import '../controllers/sign_animation_controller.dart';

class SignInButtonRow extends StatelessWidget {
  const SignInButtonRow({super.key});

  void login() {
    Get.offAndToNamed(AppRouts.home);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignController>(builder: (controller) {
      return GetBuilder<SignAnimation>(builder: (ainimationController) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SlideTransition(
              position: ainimationController.offsetAnimation[0],
              child: AppButton.textLarge(
                  onPressed: () {
                    controller.changeSignState();
                    ainimationController.animate();
                  },
                  child: AppText.signUpForButton(
                      text: (controller.isSignIn)
                          ? AppLabels.signUpForButton
                          : AppLabels.signInForButton)),
            ),
            SlideTransition(
              position: ainimationController.offsetAnimation[1],
              child: AppButton.roundedFill(
                  onPressed: () {},
                  child: AppText.signInForButton(
                      text: (controller.isSignIn)
                          ? AppLabels.signInForButton
                          : AppLabels.signUpForButton)),
            ),
          ]),
        );
      });
    });
  }
}
