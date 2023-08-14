import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import 'package:projet/controller/auth/verifsignup.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textcolored.dart';

import 'package:projet/view/widget/auth/titleauth.dart';

class VerfiySignUp extends StatelessWidget {
  const VerfiySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiySignUpControllerImp controller = Get.put(VerfiySignUpControllerImp());
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
            const Titleauth(
              headline: "Check Code",
              text:
                  "Enter the verification code we just sent you on your phone number",
            ),
            const SizedBox(
              height: 10,
            ),
            OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(10),
              numberOfFields: 5,
              borderColor: const Color.fromARGB(255, 120, 120, 121),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goTosuccesssignup();
              }, // end onSubmit
            ),
            const SizedBox(
              height: 10,
            ),
            const Textcolored(
                text1: "if you dont receive code",
                text2: "Resend ",
                onTap: null),
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
