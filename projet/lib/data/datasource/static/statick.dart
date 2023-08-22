import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:projet/core/constant/imageasset.dart';
import 'package:projet/data/model/onboarding.dart';

List<BottomNavigationBarItem> navBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.blog),
    label: 'Blog',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.history),
    label: 'Old Ticket',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];
List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "2".tr, body: "3".tr, image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "4".tr, body: "5".tr, image: AppImageAsset.onBoardingImageTow),
  OnBoardingModel(
      title: "6".tr, body: "7".tr, image: AppImageAsset.onBoardingImageThree),
];

List<Map<String, dynamic>> carouselItems = [
  {
    'image': AppImageAsset.onBoardingImageOne,
    'text': 'Welcome to Page 1',
    'subtitle': 'Subtitle 1',
  },
  {
    'image': AppImageAsset.onBoardingImageTow,
    'text': 'Welcome to Page 2',
    'subtitle': 'Subtitle 2',
  },
  {
    'image': AppImageAsset.onBoardingImageThree,
    'text': 'Welcome to Page 3',
    'subtitle': 'Subtitle 3',
  },
];
