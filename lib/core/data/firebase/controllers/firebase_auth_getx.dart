import 'package:firebase_auth/firebase_auth.dart';
import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:get/get.dart';

class FirebaseServiceGetX extends GetConnect {
  var firebaseAuth = FirebaseAuth.instance.obs;

  @override
  void onInit() {
    firebaseAuth.value.userChanges().listen((User? user) {
      if (user == null) {
        Get.offAllNamed(AppRouts.signIn);
      } else {
        Get.offAllNamed(AppRouts.home);
      }
    });
  }
}
