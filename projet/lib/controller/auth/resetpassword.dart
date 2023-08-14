import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccesspage();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newpassword;
  late TextEditingController confirmnewpassword;
  @override
  resetpassword() {}

  @override
  goToSuccesspage() {
    Get.offNamed(AppRoute.successpage);
  }

  @override
  void onInit() {
    newpassword = TextEditingController();
    confirmnewpassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    newpassword.dispose();
    confirmnewpassword.dispose();

    super.dispose();
  }
}
