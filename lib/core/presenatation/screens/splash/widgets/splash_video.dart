import 'package:five_flutter_auth_app/core/internal/theme/app_colors.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/errors/video_ops_error/video_ops_error_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../splash_exports.dart';

/// A widget that displays a splash video.
class SplashVideo extends StatefulWidget {
  const SplashVideo({super.key});

  @override
  State<SplashVideo> createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoStateController>(
      builder: (controller) {
        if (controller.isVideoInitialized == 1) {
          return Center(
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: controller.videoWidht,
                      height: controller.videoHeight,
                      child: VideoPlayer(controller.videoPlayerController),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (controller.isVideoInitialized == 0) {
          return const VideoErrorOpsScreen();
        } else {
          return const SizedBox.expand(
              child: ColoredBox(color: AppColors.primaryBackground));
        }
      },
    );
  }
}
