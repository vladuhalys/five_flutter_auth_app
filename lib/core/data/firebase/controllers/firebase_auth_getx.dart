import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseServiceGetX extends GetConnect {
  var firebaseAuth = FirebaseAuth.instance.obs;

  @override
  void onInit() {
    firebaseAuth.value.userChanges().listen((User? user) {
      if (user == null) {
        Get.offAllNamed('/signin');
      } else {
        Get.offAllNamed('/home');
      }
    });
  }
}
