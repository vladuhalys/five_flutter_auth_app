import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/models_exports.dart';

class GetXValidation extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  final NicknameValid nicknameValid = NicknameValid();
  final EmailValid emailValid = EmailValid();
  final PasswordValid passwordValid = PasswordValid();
  final ConfirmPasswordValid confirmPasswordValid = ConfirmPasswordValid();

  late Rx<FocusNode> focusNodeEmailNick;
  late Rx<FocusNode> focusNodePassword;
  late Rx<FocusNode> focusNodeConfirmPassword;

  final Rx<String?> nickname = "".obs;
  final Rx<String?> email = "".obs;
  final Rx<String?> password = "".obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    focusNodeEmailNick = FocusNode().obs;
    focusNodePassword = FocusNode().obs;
    focusNodeConfirmPassword = FocusNode().obs;
  }

  @override
  Future<void> onClose() async {
    super.onClose();
  }
}
