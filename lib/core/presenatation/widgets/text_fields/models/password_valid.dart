import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_controller.dart';
import 'package:get/get.dart';

class PasswordValid extends AbstractValid {
  static const Map<int, String> passwordErrorCode = {
    1: AppPasswordError.length,
    2: AppPasswordError.digit,
    3: AppPasswordError.lowercase,
    4: AppPasswordError.uppercase,
    5: AppPasswordError.specialSymbol,
  };

  String? _error = '';

  @override
  String? getError() {
    return _error;
  }

  int isLenthAt(String? value, {int length = 8}) {
    return (value!.length >= 8) ? 0 : 1;
  }

  int isContainsOneLowerLatter(String? value) {
    return (value!.contains(RegExp(r'[a-z]'))) ? 0 : 3;
  }

  int isContainsOneUpperLatter(String? value) {
    return (value!.contains(RegExp(r'[A-Z]'))) ? 0 : 4;
  }

  int isContainsOneDigit(String? value) {
    return (value!.contains(RegExp(r'[0-9]'))) ? 0 : 2;
  }

  int isContainsOneSpecialSymbol(String? value) {
    return (value!.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) ? 0 : 5;
  }

  @override
  bool isValid(String? value) {
    var signController = Get.find<SignController>();
    List<int> errors = (signController.isSignIn)
        ? [
            isLenthAt(value),
          ]
        : [
            isLenthAt(value),
            isContainsOneDigit(value),
            isContainsOneLowerLatter(value),
            isContainsOneUpperLatter(value),
            isContainsOneSpecialSymbol(value),
          ];
    errors.removeWhere((element) => element == 0);
    if (errors.isNotEmpty) {
      _error = '';
      for (var element in errors) {
        _error = '${_error!}${passwordErrorCode[element]!}\n';
      }
      return false;
    }
    return true;
  }
}
