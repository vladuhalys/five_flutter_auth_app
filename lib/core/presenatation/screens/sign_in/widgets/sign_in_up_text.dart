import 'package:five_flutter_auth_app/core/presenatation/widgets/texts/app_texts.dart';
import 'package:flutter/material.dart';

class SignInUpText extends StatelessWidget {
  const SignInUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 30.0),
      child: Row(children: [
        AppText.appTextScreenHeader(text: 'Welcome\nBack!'),
      ]),
    );
  }
}
