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
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            onBoardingList[i].image!,
            width: 410,
            height: 370,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 370,
            child: Text(
              onBoardingList[i].title!,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: SizedBox(
              width: 370,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
