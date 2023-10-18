import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';

class NicknameValid extends AbstractValid {
  @override
  String? getError() {
    return AppErrors.nickname;
  }

  @override
  bool isValid(String? value) {
    return (value!.length > 3);
  }
}
