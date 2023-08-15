import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/auth/sucessignup.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/view/widget/auth/logoauth.dart';
import 'package:projet/view/widget/auth/titleauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpController controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      body: Container(
        color: AppColor.lightwhite,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: FaIcon(
                FontAwesomeIcons.solidCheckCircle,
                size: 70,
                color: Color(0xff29CA8C),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Titleauth(
              headline: "Compte Créé Avec Succès",
              text: "Get help to write a will, make a power of attorney",
            ),
            const SizedBox(height: 20),
            AuthButom(
              text: "Go To Login",
              onPressed: () {
                controller.goToLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
