import 'package:five_flutter_auth_app/core/data/firebase/controllers/firebase_auth_getx.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/splash/controller/video_splash_controller.dart';
import 'package:get/get.dart';

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseServiceGetX>(() => FirebaseServiceGetX());
    Get.lazyPut<VideoStateController>(() => VideoStateController());
  }
}
