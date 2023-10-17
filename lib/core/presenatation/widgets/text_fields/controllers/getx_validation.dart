import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/models/email_valid.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/models/nickname_valid.dart';
import 'package:five_flutter_auth_app/core/presenatation/widgets/text_fields/models/password_valid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXValidation extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  late NicknameValid nicknameValid;
  late EmailValid emailValid;
  late PasswordValid passwordValid;

  @override
  Future<void> onInit() async {
    super.onInit();
    nicknameValid = NicknameValid();
    emailValid = EmailValid();
    passwordValid = PasswordValid();
  }

  @override
  Future<void> onClose() async {
    super.onClose();
  }
}
