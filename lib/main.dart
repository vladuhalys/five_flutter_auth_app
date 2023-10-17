import 'package:firebase_core/firebase_core.dart';
import 'package:five_flutter_auth_app/core/internal/application.dart';
import 'package:five_flutter_auth_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const Application()));
}
