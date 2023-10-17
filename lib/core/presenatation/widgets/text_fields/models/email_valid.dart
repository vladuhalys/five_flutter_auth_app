import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';

class EmailValid extends AbstractValid {
  @override
  String? getError() {
    return AppErrors.email;
  }

  @override
  bool isValid(String? value) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value!);
  }
}
