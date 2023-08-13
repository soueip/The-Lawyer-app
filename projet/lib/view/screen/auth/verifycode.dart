import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/forgetpasswordcontroller.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('Verification Code ',
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
              headline: "Check Code",
              text:
                  "Enter the verification code we just sent you on your e-mail ",
            ),
            const SizedBox(height: 20),
            TextFormAuth(
                text: "Email",
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                mycontroller: controller.email),
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
