import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:projet/view/widget/client/bottomnavbar/bottom_nav_bar.dart';

abstract class LoginController extends GetxController {
  void login();
  void goToSignUp();
  void goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool isVisiblepass = true;

  void showPassword() {
    isVisiblepass = !isVisiblepass;
    update();
  }

  @override
  Future<void> onInit() async {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Future<void> login() async {
    if (formstate.currentState!.validate()) {
      try {
        await Future.delayed(const Duration(seconds: 1));

        // Extracting the email entered by the user
        String userEmail = email.text.toLowerCase(); // Convert to lowercase

        // Check for specific keywords in the email and navigate accordingly
        if (userEmail.contains('expert')) {
          Get.offAllNamed(AppRoute.expertHomepage);
        } else if (userEmail.contains('admin')) {
          Get.offAllNamed(AppRoute.adminHomepage);
        } else if (userEmail.contains('manager')) {
          Get.offAllNamed(AppRoute.managerHomepage);
        } else {
          Get.offAllNamed(AppRoute.bottomnavbar);
        }
      } catch (e) {
        // Show an error message to the user
        Get.snackbar(
          snackPosition: SnackPosition.BOTTOM,
          'Error',
          'An error occurred. Please check your internet connection or try again later.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  @override
  void goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void goToForgetPassword() {
    Get.toNamed(AppRoute.forgetpassword);
  }
}
