import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/resetpassword.dart';

import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';

import 'package:projet/view/widget/auth/titleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('Reset Password',
              style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
      ),
      body: Container(
        color: AppColor.lightwhite,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
            const Titleauth(
              headline: "Change Password",
              text: "",
            ),
            const SizedBox(height: 20),
            TextFormAuth(
                text: "New Password",
                hinttext: " New password",
                iconData: Icons.email_outlined,
                mycontroller: controller.newpassword),
            TextFormAuth(
                text: "Confirm Your Password",
                hinttext: "Confirm  your password",
                iconData: Icons.email_outlined,
                mycontroller: controller.confirmnewpassword),
            AuthButom(
              text: "Check",
              onPressed: () {
                controller.goToSuccesspage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
