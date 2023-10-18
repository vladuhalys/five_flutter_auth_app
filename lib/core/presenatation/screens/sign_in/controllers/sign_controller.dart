import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:get/get.dart';

class SignController extends GetxController {
  late RxBool _isSignIn;

  bool get isSignIn => _isSignIn.value;

  @override
  Future<void> onInit() async {
    super.onInit();
    _isSignIn = true.obs;
  }

  Future<void> changeSignState() async {
    var valid = Get.find<GetXValidation>();
    _isSignIn.value = !_isSignIn.value;
    valid.update();
    update();
  }

  @override
  Future<void> onClose() async {
    _isSignIn.close();
    super.onClose();
  }
}
