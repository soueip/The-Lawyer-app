import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/signup.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';
import 'package:projet/core/functions/validinput.dart';

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
                valid: (val) {
                  return validInput(val!, "name", 5, 20);
                },
                text: "Name",
                hinttext: "Enter your name",
                iconData: Icons.person,
                mycontroller: controller.name,
              ),
              TextFormAuth(
                valid: (val) {
                  return validInput(val!, "email", 5, 25);
                },
                text: "Email",
                hinttext: "Enter your e-mail",
                iconData: Icons.email_outlined,
                mycontroller: controller.email,
              ),
              TextFormAuth(
                valid: (val) {
                  return validInput(val!, "phone", 8, 15);
                },
                text: "Phone Number",
                hinttext: "Enter your phone number",
                iconData: Icons.numbers,
                mycontroller: controller.phonenumber,
              ),
              TextFormAuth(
                valid: (val) {
                  return validInput(val!, "phone", 8, 30);
                },
                text: "Password",
                hinttext: "Enter your password",
                iconData: Icons.visibility,
                mycontroller: controller.password,
              ),
              TextFormAuth(
                valid: (val) {
                  return validInput(val!, "confirmpassword", 8, 30);
                },
                text: "Confirm Your Password",
                hinttext: "Enter your phone password",
                iconData: Icons.visibility,
                mycontroller: controller.confirmpassword,
              ),
              AuthButom(
                text: "Create New Account",
                onPressed: () {
                  controller.goToverifSignIn();
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
