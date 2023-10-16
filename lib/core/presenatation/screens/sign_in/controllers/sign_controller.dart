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
    _isSignIn.value = !_isSignIn.value;
    update();
  }

  @override
  Future<void> onClose() async {
    _isSignIn.close();
    super.onClose();
  }
}
