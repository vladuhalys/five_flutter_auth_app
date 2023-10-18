import 'package:get/get.dart';

class EyeIconsController extends GetxController {
  late RxBool isPasswordVisible;
  late RxBool isConfirmPasswordVisible;

  @override
  void onInit() {
    isPasswordVisible = false.obs;
    isConfirmPasswordVisible = false.obs;
    super.onInit();
  }

  void passwordVisibilityChanged() async {
    isPasswordVisible.value = !isPasswordVisible.value;
    update();
  }

  void confirmPasswordVisibilityChanged() async {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
    update();
  }

  @override
  void onClose() {
    isPasswordVisible.close();
    isConfirmPasswordVisible.close();
    super.onClose();
  }
}
