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
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageAsset.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
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
                      textbutton: "Arabe",
                      backgroundColor: AppColor.gold,
                      textColor: AppColor.bleu,
                      onPressed: () {
                        controller.changeLang("ar");
                        Get.toNamed(AppRoute.onBoarding);
                      },
                    ),
                    CustomButtonLang(
                      textbutton: "Français",
                      backgroundColor: AppColor.bleu,
                      textColor: AppColor.gold,
                      onPressed: () {
                        controller.changeLang("fr");
                        Get.toNamed(AppRoute.onBoarding);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
