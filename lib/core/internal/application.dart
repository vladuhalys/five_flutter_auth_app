import 'package:five_flutter_auth_app/core/internal/util/bindings/bindings_getx.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/home/home.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/sign_in/sign_in_screen.dart';
import 'package:five_flutter_auth_app/core/presenatation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Five Authentications App',
        debugShowCheckedModeBanner: false,
        initialBinding: GetXBindings(),
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => const SplashScreen()),
          GetPage(name: '/signin', page: () => const SignInScreen()),
          GetPage(name: '/home', page: () => const HomeScreen()),
        ]);
  }
}
