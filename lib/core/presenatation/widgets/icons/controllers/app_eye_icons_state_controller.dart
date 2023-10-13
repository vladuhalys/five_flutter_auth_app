import 'package:get/get.dart';

class EyeIconsController extends GetxController {
  late RxBool isPasswordVisible;

  @override
  void onInit() {
    isPasswordVisible = false.obs;
    super.onInit();
  }

  void passwordVisibilityChanged() async {
    isPasswordVisible.value = !isPasswordVisible.value;
    update();
  }

  @override
  void onClose() {
    isPasswordVisible.close();
    super.onClose();
  }
}
