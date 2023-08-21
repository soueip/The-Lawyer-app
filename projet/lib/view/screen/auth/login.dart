import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/login.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/functions/alertexitapp.dart';
import 'package:projet/core/functions/validinput.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/textcolored.dart';
import 'package:projet/view/widget/auth/textformauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text("9".tr, style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          color: AppColor.lightwhite,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const LogoAuth(),
                Titleauth(
                  headline: "10".tr,
                  text: "11".tr,
                ),
                const SizedBox(height: 20),
                TextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, "email", 5, 30);
                  },
                  text: "12".tr,
                  hinttext: "13".tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => TextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, "password", 8, 30);
                    },
                    obscureText: controller.isVisiblepass,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    text: "14".tr,
                    hinttext: "15".tr,
                    iconData: Icons.visibility,
                    mycontroller: controller.password,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "16".tr,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                AuthButom(
                  text: "17".tr,
                  onPressed: () {
                    controller.login();
                  },
                ),
                Textcolored(
                  text1: "18".tr,
                  text2: "19".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
