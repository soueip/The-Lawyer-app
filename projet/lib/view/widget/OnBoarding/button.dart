import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/onboarding.dart';
import 'package:projet/core/constant/color.dart';

class OnboardingButton extends GetView<OnboardingControllerImp> {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      height: 45,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        textColor: AppColor.bleu,
        onPressed: () {
          controller.next();
        },
        color: AppColor.gold,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          "8".tr,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
