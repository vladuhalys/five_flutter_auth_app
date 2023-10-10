import 'package:flutter/material.dart';

import 'widgets/splash_video.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF1D1D1D),
        body: SplashVideo(videoSource: 'assets/video/promo.mp4'));
  }
}
