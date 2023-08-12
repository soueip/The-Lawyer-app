import 'package:projet/core/constant/color.dart';
import 'package:projet/core/constant/imageasset.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:projet/core/localisation/changelocation.dart';
import 'package:projet/view/widget/language/buttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bleu1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImageAsset.logo),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1".tr,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 10),
                  CustomButtonLang(
                    textbutton: "Arabic",
                    backgroundColor: AppColor.gold,
                    textColor: AppColor.bleu, // Set text color
                    onPressed: () {
                      controller.changeLang("ar");
                      Get.toNamed(AppRoute.onBoarding);
                    },
                  ),
                  CustomButtonLang(
                    textbutton: "English",
                    backgroundColor: AppColor.bleu,
                    textColor: AppColor.gold,
                    onPressed: () {
                      controller.changeLang("en");
                      Get.toNamed(AppRoute.onBoarding);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
