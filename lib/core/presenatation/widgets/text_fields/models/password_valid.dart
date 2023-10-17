import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';

class PasswordValid extends AbstractValid {
  @override
  String? getError() {
    return AppErrors.password;
  }

  @override
  bool isValid(String? value) {
    return (value!.length >= 8);
  }
}
