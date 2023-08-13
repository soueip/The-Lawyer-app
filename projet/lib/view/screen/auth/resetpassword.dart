import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';

import 'package:projet/view/widget/auth/titleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    //ForgetPasswordControllerImp controller =
    //Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('Forget Password',
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
            Titleauth(
              headline: "Check Email",
              text: "Sign In With Your Email And Password",
            ),
            const SizedBox(height: 20),
            // TextFormAuth(
            //     text: "Email",
            //     hinttext: "Enter Your Email",
            //     iconData: Icons.email_outlined,
            //     mycontroller: controller.email),
            AuthButom(
              text: "Check",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
