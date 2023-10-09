import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Five Authentications App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Text('Five Authentications App'),
      )),
    );
  }
}
