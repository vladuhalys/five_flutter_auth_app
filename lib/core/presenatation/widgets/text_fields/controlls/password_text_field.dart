import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget_exports.dart';

class AppPasswordTextField extends StatelessWidget {
  const AppPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EyeIconsController>(builder: (passwordVision) {
      return GetBuilder<GetXValidation>(builder: (controllerGetX) {
        return TextFormField(
          validator: (value) {
            if (value?.isEmpty == true) {
              return "Please enter your password";
            } else if (!controllerGetX.passwordValid.isValid(value)) {
              return controllerGetX.passwordValid.getError();
            }
            return null;
          },
          style: AppTextStyle.labelText.copyWith(color: Colors.white),
          obscureText: !passwordVision.isPasswordVisible.value,
          decoration: AppTextFieldsStyle.passwordInput,
        );
      });
    });
  }
}
