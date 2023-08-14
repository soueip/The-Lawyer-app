import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/checkemail.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('Check Email ',
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
              headline: "Succes SignUp",
              text:
                  "Please Enter Your Email Address To Recive A Verification Code",
            ),
            const SizedBox(height: 20),
            TextFormAuth(
                text: "Email",
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                mycontroller: controller.email),
            AuthButom(
              text: "Check",
              onPressed: () {
                controller.goTosucsginup();
              },
            ),
          ],
        ),
      ),
    );
  }
}
