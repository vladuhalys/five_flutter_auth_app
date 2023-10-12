import 'dart:async';

import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoStateController extends GetxController {
  late final VideoPlayerController _videoPlayerController;
  int _isVideoInit = -1;

  @override
  Future<void> onInit() async {
    try {
      super.onInit();
      _videoPlayerController =
          VideoPlayerController.asset(AppAssetsVideo.splashEmptyVideo);
      await _videoPlayerController.initialize();
      if (videoPlayerController.value.isInitialized) {
        _isVideoInit = 1;
        update();
      }
      _videoPlayerController.seekTo(const Duration(seconds: 5));
      Timer(const Duration(seconds: 5), () {
        Get.offAndToNamed(AppRouts.signIn);
        dispose();
      });
      _videoPlayerController.play();
    } catch (e) {
      _isVideoInit = 0;
      update();
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  int get isVideoInitialized => _isVideoInit;
  VideoPlayerController get videoPlayerController => _videoPlayerController;

  double get videoWidht => _videoPlayerController.value.size.width;
  double get videoHeight => _videoPlayerController.value.size.height;
}
