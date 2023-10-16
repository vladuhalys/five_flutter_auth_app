import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../internal/theme/theme.dart';

class AppText extends StatelessWidget {
  late final Widget textControll;
  final String text;
  AppText.errorOnButton({super.key, required this.text}) {
    textControll = TextAnimator(text,
        incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
        outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
        style:
            AppTextStyle.labelText.copyWith(color: AppColors.errorLabelDark));
  }
  AppText.appTextScreenHeader({super.key, required this.text}) {
    textControll = TextAnimator(text,
        maxLines: 3,
        incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
        outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
        style: AppTextStyle.headerText
            .copyWith(color: AppColors.primaryTextColor));
  }
  AppText.fogotPasword({super.key, required this.text}) {
    textControll = Text(text,
        style: AppTextStyle.labelText
            .copyWith(color: AppColors.highlightTextColor));
  }
  AppText.signUpForButton({super.key, required this.text}) {
    textControll = TextAnimator(text,
        incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
        outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
        style:
            AppTextStyle.buttonText.copyWith(color: AppColors.textFieldHint));
  }
  AppText.signInForButton({super.key, required this.text}) {
    textControll = TextAnimator(text,
        incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
        outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
        style: AppTextStyle.buttonText
            .copyWith(color: AppColors.primaryTextColor));
  }
  AppText.signInWith({super.key, required this.text}) {
    textControll = Text(text,
        style: AppTextStyle.labelTextRegularPopinns
            .copyWith(color: AppColors.secondaryTextColor));
  }

  @override
  Widget build(BuildContext context) {
    return textControll;
  }
}
