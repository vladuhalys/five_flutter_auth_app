import 'package:five_flutter_auth_app/core/presenatation/widgets/icons/models/eye_state_model_for_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../internal/resources/resources_exports.dart';
import 'models/eye_state_model_for_password.dart';

abstract class AppIcons {
  static final Widget arrowRight =
      SvgPicture.asset(AppAssetsImg.arrowRight, width: 17);
  static final Widget arrowBack =
      SvgPicture.asset(AppAssetsImg.arrowRight, width: 17);
  static final Widget apple = SvgPicture.asset(AppAssetsImg.apple, width: 17);
  static final Widget user = SvgPicture.asset(AppAssetsImg.user, width: 10);
  static Widget eyePassword = const EyeStateModelForPassword();
  static Widget eyeConfirm = const EyeStateModelForConfirm();
  static final Widget password =
      SvgPicture.asset(AppAssetsImg.password, width: 17);
  static final Widget mail = SvgPicture.asset(AppAssetsImg.mail, width: 17);
  static final Widget facebook =
      SvgPicture.asset(AppAssetsImg.facebook, width: 17);
  static final Widget google = SvgPicture.asset(AppAssetsImg.google, width: 17);
}
