import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:get/get.dart';

class ConfirmPasswordValid extends AbstractValid {
  @override
  String? getError() {
    return AppErrors.confirmPassword;
  }

  @override
  bool isValid(String? value) {
    return value == Get.find<GetXValidation>().password.value;
  }
}
