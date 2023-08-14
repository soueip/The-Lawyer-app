import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phonenumber;
  late TextEditingController password;
  late TextEditingController confirmpassword;
  @override
  signup() {
    Get.offNamed(AppRoute.checkemail);
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phonenumber = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    password.dispose();
    email.dispose();
    phonenumber.dispose();
    confirmpassword.dispose();
    super.dispose();
  }
}
