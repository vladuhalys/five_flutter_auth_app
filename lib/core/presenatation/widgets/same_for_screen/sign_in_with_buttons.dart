import 'package:five_flutter_auth_app/core/presenatation/widgets/widget_exports.dart';
import 'package:flutter/material.dart';

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
            AppText.signInWith(text: AppLabels.signInWith),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              AppButton.circleFletDark(
                onPressed: () {},
                child: AppIcons.facebook,
              ),
              AppButton.circleFletDark(onPressed: () {}, child: AppIcons.apple),
              AppButton.circleFletDark(
                  onPressed: () {}, child: AppIcons.google),
            ]),
          ],
        ),
      ),
    );
  }
}
