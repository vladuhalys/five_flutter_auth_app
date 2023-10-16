import 'package:five_flutter_auth_app/core/internal/util/bindings/bindings_getx.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/home/home.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/sign_in_screen.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'internal_exports.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Authentications App',
        debugShowCheckedModeBanner: false,
        initialBinding: GetXBindings(),
        initialRoute: AppRouts.splash,
        getPages: [
          GetPage(name: AppRouts.splash, page: () => const SplashScreen()),
          GetPage(name: AppRouts.signIn, page: () => const SignInScreen()),
          GetPage(name: AppRouts.home, page: () => const HomeScreen()),
        ]);
  }
}
