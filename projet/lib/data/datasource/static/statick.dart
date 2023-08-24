import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:projet/core/constant/imageasset.dart';
import 'package:projet/data/model/onboarding.dart';

List<Map<String, dynamic>> offreList = [
  {
    'nom': 'Offre 1',
    'description': 'Offre de test',
    'price': 750,
    'nbTickets': 3,
    'period': 5,
  },
  {
    'nom': 'Offre 2',
    'description': 'Another offer description',
    'price': 1200,
    'nbTickets': 5,
    'period': 7,
  },
  {
    'nom': 'Offre 3',
    'description': 'Special offer for a limited time',
    'price': 500,
    'nbTickets': 2,
    'period': 3,
  },
];

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
    'image': AppImageAsset.carouselImageone,
    'text': 'Welcome to Page 1',
    'subtitle': 'Subtitle 1',
  },
  {
    'image': AppImageAsset.carouselImagetwo,
    'text': 'Welcome to Page 2',
    'subtitle': 'Subtitle 2',
  },
  {
    'image': AppImageAsset.carouselImageThree,
    'text': 'Welcome to Page 3',
    'subtitle': 'Subtitle 3',
  },
];
