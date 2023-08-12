import 'package:flutter/material.dart';
import 'package:projet/controller/onboarding.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/OnBoarding/button.dart';
import 'package:projet/view/widget/OnBoarding/dotcontroler.dart';
import 'package:projet/view/widget/OnBoarding/slider.dart';

import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.bleu,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: OnboardingSlider(),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  OnboardingControllerwid(),
                  Spacer(
                    flex: 5,
                  ),
                  OnboardingButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
