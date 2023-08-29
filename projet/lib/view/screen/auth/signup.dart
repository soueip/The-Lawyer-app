import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/signup.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/functions/alertexitapp.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';
import 'package:projet/core/functions/validinput.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('Sign Up', style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
      ),
      body: GetBuilder<SignUpControllerImp>(
        builder: (controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            color: AppColor.lightwhite,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const LogoAuth(),
                  const Titleauth(
                    headline: "Getting Started !",
                    text:
                        "Look like you are new to us ! Create an account for a complete experience.",
                  ),
                  const SizedBox(height: 20),
                  TextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, "username", 3, 20);
                    },
                    text: "Name",
                    hinttext: "Enter your name",
                    iconData: Icons.person,
                    mycontroller: controller.username,
                  ),
                  TextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, "email", 5, 30);
                    },
                    text: "Email",
                    hinttext: "Enter your e-mail",
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                  ),
                  TextFormAuth(
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, "phone", 8, 15);
                    },
                    text: "Phone Number",
                    hinttext: "Enter your phone number",
                    iconData: Icons.numbers,
                    mycontroller: controller.phone,
                  ),
                  GetBuilder<SignUpControllerImp>(
                    builder: (controller) => TextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, "password", 8, 30);
                      },
                      obscureText: controller.isVisiblepass,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      text: "Password",
                      hinttext: "Enter Your Password",
                      iconData: Icons.visibility,
                      mycontroller: controller.password,
                    ),
                  ),
                  AuthButom(
                    text: "Create New Account",
                    onPressed: () {
                      controller.signup();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
