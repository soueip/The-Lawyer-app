import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/signupcontroller.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textcolored.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
      body: Container(
        color: AppColor.lightwhite,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
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
              text: "Name",
              hinttext: "Enter your name",
              iconData: Icons.person,
              mycontroller: controller.name,
            ),
            TextFormAuth(
              text: "Email",
              hinttext: "Enter your e-mail",
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            TextFormAuth(
              text: "Phone Number",
              hinttext: "Enter your phone number",
              iconData: Icons.numbers,
              mycontroller: controller.phonenumber,
            ),
            TextFormAuth(
              text: "Password",
              hinttext: "Enter your password",
              iconData: Icons.visibility,
              mycontroller: controller.password,
            ),
            TextFormAuth(
              text: "Confirm Your Password",
              hinttext: "Enter your phone password",
              iconData: Icons.visibility,
              mycontroller: controller.confirmpassword,
            ),
            AuthButom(
              text: "Create New Account",
              onPressed: () {},
            ),
            Textcolored(
              text1: "You have account already ? ",
              text2: "Sign In",
              onTap: () {
                controller.goToSignIn();
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
