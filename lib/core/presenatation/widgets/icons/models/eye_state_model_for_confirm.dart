import 'package:five_flutter_auth_app/core/internal/resources/assets/assets_img/assets_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/app_eye_icons_state_controller.dart';

class EyeStateModelForConfirm extends StatelessWidget {
  const EyeStateModelForConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EyeIconsController>(
      init: EyeIconsController(),
      builder: (controller) {
        return IconButton(
            splashColor: Colors.transparent,
            onPressed: () => controller.confirmPasswordVisibilityChanged(),
            icon: (controller.isConfirmPasswordVisible.isTrue)
                ? SvgPicture.asset(AppAssetsImg.eye, width: 23)
                : SvgPicture.asset(AppAssetsImg.eyeClose, width: 23));
      },
    );
  }
}
