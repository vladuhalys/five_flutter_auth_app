import 'package:five_flutter_auth_app/core/internal/theme/app_colors.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_controller.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../widgets/same_for_screen/same_for_screen_exports.dart';
import 'sign_in_exports.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final renew = Get.find<GetXValidation>(); //for renew GetX in memory

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignController>(
      init: SignController(),
      builder: (controller) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
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
                  const SignInButtonRow(),
                  const SignInWithButtons(),
                ],
              ),
            ));
      },
    );
  }
}
