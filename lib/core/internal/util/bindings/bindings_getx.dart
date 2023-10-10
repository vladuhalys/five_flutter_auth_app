import 'package:five_flutter_auth_app/core/data/firebase/controllers/firebase_auth_getx.dart';
import 'package:get/get.dart';

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseServiceGetX>(() => FirebaseServiceGetX());
  }
}
