import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';

abstract class SignUpController extends GetxController {
  signup();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isVisiblepass = true;
  showPassword() {
    isVisiblepass = isVisiblepass == true ? false : true;
    update();
  }

  @override
  signup() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verifsignup);
      Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
