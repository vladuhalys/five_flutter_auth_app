import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/getx_validation.dart';

class AppUserTextField extends StatelessWidget {
  const AppUserTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetXValidation>(builder: (controllerGetX) {
      return TextFormField(
          onFieldSubmitted: (value) {
            controllerGetX.focusNodePassword.value.requestFocus();
          },
          validator: (value) {
            if (value?.isEmpty == true) {
              return "Please enter your email or username";
            } else {
              if (value?.contains("@") == true) {
                controllerGetX.email.value = value;
                if (!controllerGetX.emailValid.isValid(value)) {
                  return controllerGetX.emailValid.getError();
                }
              } else {
                controllerGetX.nickname.value = value;
                if (!controllerGetX.nicknameValid.isValid(value)) {
                  return controllerGetX.nicknameValid.getError();
                }
              }
            }
            return null;
          },
          style: AppTextStyle.labelText.copyWith(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: AppTextFieldsStyle.userInput);
    });
  }
}
