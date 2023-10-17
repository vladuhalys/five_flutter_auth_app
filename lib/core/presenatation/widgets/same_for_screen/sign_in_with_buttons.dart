import 'package:five_flutter_auth_app/core/presenatation/widgets/widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SignInWithButtons extends StatelessWidget {
  const SignInWithButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WidgetAnimator(
                incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
                outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
                child: AppText.signInWith(text: AppLabels.signInWith)),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              WidgetAnimator(
                incomingEffect:
                    WidgetTransitionEffects.incomingSlideInFromLeft(),
                outgoingEffect:
                    WidgetTransitionEffects.outgoingSlideOutToLeft(),
                child: AppButton.circleFletDark(
                  onPressed: () {},
                  child: AppIcons.facebook,
                ),
              ),
              const SizedBox(width: 20),
              WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromBottom(),
                  outgoingEffect:
                      WidgetTransitionEffects.outgoingSlideOutToBottom(),
                  child: AppButton.circleFletDark(
                      onPressed: () {}, child: AppIcons.apple)),
              const SizedBox(width: 20),
              WidgetAnimator(
                incomingEffect:
                    WidgetTransitionEffects.incomingSlideInFromRight(),
                outgoingEffect:
                    WidgetTransitionEffects.outgoingSlideOutToRight(),
                child: AppButton.circleFletDark(
                    onPressed: () {}, child: AppIcons.google),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
