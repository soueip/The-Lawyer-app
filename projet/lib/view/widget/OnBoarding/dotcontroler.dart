import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/onboarding.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/data/datasource/static/statick.dart';

class OnboardingControllerwid extends StatelessWidget {
  const OnboardingControllerwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        child: GetBuilder<OnboardingControllerImp>(
          builder: (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration: const Duration(milliseconds: 900),
                        width: 20,
                        height: 4,
                        decoration: BoxDecoration(
                            color: controller.currentPage == index
                                ? AppColor.gold
                                : AppColor.darkbleu,
                            borderRadius: BorderRadius.circular(10)),
                      ))
            ],
          ),
        ));
  }
}
