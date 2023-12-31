import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/onboarding.dart';
import 'package:projet/data/datasource/static/statick.dart';

class OnboardingSlider extends GetView<OnboardingControllerImp> {
  const OnboardingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Stack(
        children: [
          Image.asset(
            onBoardingList[i].image!,
            width: 450,
            height: Get.width / 1.05,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 370,
            left: 20, // Adjust the left value as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 360,
                  child: Text(
                    onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 370,
                  child: Text(
                    onBoardingList[i].body!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
