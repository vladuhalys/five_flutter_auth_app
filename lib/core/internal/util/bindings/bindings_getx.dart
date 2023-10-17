import 'package:five_flutter_auth_app/core/data/firebase/controllers/firebase_auth_getx.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_animation_controller.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/controllers/sign_controller.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/sign_in_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/splash/controller/video_splash_controller.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/controllers/getx_validation.dart';
import 'package:get/get.dart';

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseServiceGetX>(() => FirebaseServiceGetX());
    Get.lazyPut<VideoStateController>(() => VideoStateController());
    Get.lazyPut<SignController>(() => SignController());
    Get.lazyPut<SignAnimation>(() => SignAnimation());
    Get.lazyPut<GetXValidation>(() => GetXValidation());
    Get.lazyPut<EyeIconsController>(() => EyeIconsController());
  }
}
