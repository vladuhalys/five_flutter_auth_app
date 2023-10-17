import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presentation_exports.dart';

class SignInFields extends StatelessWidget {
  const SignInFields({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetXValidation>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.formKey.value,
          child: Column(children: [
            AppTextFields.user(),
            const SizedBox(height: 31),
            AppTextFields.password(),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: AppButton.textSmall(
                  onPressed: () => {},
                  child: AppText.fogotPasword(text: AppLabels.fogotPassword)),
            ),
          ]),
        ),
      );
    });
  }
}
