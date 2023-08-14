import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:projet/controller/auth/successpage.dart';

import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/auth/authbutom.dart';
import 'package:projet/view/widget/auth/logoauth.dart';

import 'package:projet/view/widget/auth/titleauth.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessPageController controller = Get.put(SuccessPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.lightwhite,
          elevation: 0.0,
          title: Text('', style: Theme.of(context).textTheme.headline4),
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
              headline: "Password Changed Successfully",
              text: "Get help to write a will, make a power of attorney",
            ),
            const SizedBox(height: 20),
            AuthButom(
              text: "Login",
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
