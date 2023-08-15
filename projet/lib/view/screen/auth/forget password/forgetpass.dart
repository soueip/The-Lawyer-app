import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/forgetpassword.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';
import 'package:projet/core/functions/validinput.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
          title: Text('Forget Password',
              style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
      ),
      body: Container(
        color: AppColor.lightwhite,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const LogoAuth(),
              const Titleauth(
                headline: "Check Email",
                text:
                    "Please Enter Your Email Address To Recive A Verification Code",
              ),
              const SizedBox(height: 20),
              TextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, "email", 5, 25);
                  },
                  text: "Email",
                  hinttext: "Enter Your Email",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email),
              AuthButom(
                text: "Check",
                onPressed: () {
                  controller.goToVerfiyCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
