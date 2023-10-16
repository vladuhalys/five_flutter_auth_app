import 'package:five_flutter_auth_app/core/internal/theme/app_colors.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../widgets/same_for_screen/same_for_screen_exports.dart';
import 'sign_in_exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignController>(
      init: SignController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: AppColors.primaryBackground,
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Column(
                      children: [
                        SignInUpText(
                            text: (controller.isSignIn)
                                ? 'Welcome'
                                : 'Create an'),
                        SignInUpText(
                            text: (controller.isSignIn) ? 'Back!' : 'account'),
                      ],
                    ),
                  ),
                  (controller.isSignIn)
                      ? WidgetAnimator(
                          incomingEffect:
                              WidgetTransitionEffects.incomingSlideInFromLeft(),
                          outgoingEffect:
                              WidgetTransitionEffects.outgoingSlideOutToLeft(),
                          child: const SignInFields())
                      : WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromRight(),
                          outgoingEffect:
                              WidgetTransitionEffects.outgoingSlideOutToRight(),
                          child: const SignUpFields()),
                  const SignInButtonLine(),
                  const SignInWithButtons(),
                ],
              ),
            ));
      },
    );
  }
}
