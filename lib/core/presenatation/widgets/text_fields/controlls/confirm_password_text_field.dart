import 'package:five_flutter_auth_app/core/internal/theme/app_text_field_style/app_text_field_style.dart';
import 'package:five_flutter_auth_app/core/internal/theme/app_text_style/app_text_style.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../icons/controllers/app_eye_icons_state_controller.dart';

class AppConfirmPasswordTextField extends StatelessWidget {
  const AppConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EyeIconsController>(builder: (passwordVision) {
      return GetBuilder<GetXValidation>(builder: (controllerGetX) {
        return TextFormField(
          focusNode: controllerGetX.focusNodeConfirmPassword.value,
          keyboardAppearance: Brightness.dark,
          validator: (value) {
            if (value?.isEmpty == true) {
              return "Please enter your password";
            } else {
              if (!controllerGetX.confirmPasswordValid.isValid(value)) {
                return controllerGetX.confirmPasswordValid.getError();
              }
            }
            return null;
          },
          decoration: AppTextFieldsStyle.confirmPasswordInput,
          style: AppTextStyle.labelText.copyWith(color: Colors.white),
          obscureText: !passwordVision.isConfirmPasswordVisible.value,
        );
      });
    });
  }
}
