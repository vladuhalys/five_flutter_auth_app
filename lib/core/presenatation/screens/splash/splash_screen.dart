import 'package:flutter/material.dart';

import '../../../internal/internal_exports.dart';

import 'splash_exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.primaryBackground, body: SplashVideo());
  }
}
