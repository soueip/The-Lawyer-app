import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:projet/core/constant/imageasset.dart';
import 'package:projet/data/model/onboarding.dart';

import '../../model/blog.dart';

List<Map<String, dynamic>> allTickets = [
  {
    'name': 'ser9a',
    'clientname': 'ahmed mohamed',
    'statu': 'non affecte',
    'assignedto': 'chakib lazghab',
    'dates': DateTime(2023, 8, 27),
    'question': 'kifch njem nchki b3bed sra9ni',
    'files': 'kifch njem nchki b3bed sra9ni',
    'peroirte': 'kifch njem nchki b3bed sra9ni',
  },
  {
    'name': 'arth',
    'statu': 'effectue',
    'clientname': 'slim chriff',
    'assignedto': 'Mohamed bganda',
    'dates': DateTime(2023, 8, 27),
    'question': 'chnouma loura9 ali n3mlhom bch nkhed titre belu',
    'files': 'kifch njem nchki b3bed sra9ni',
    'peroirte': 'kifch njem nchki b3bed sra9ni',
  },
  {
    'name': 'arth',
    'statu': 'effectue',
    'clientname': 'hama hama',
    'assignedto': 'Mohamed bganda',
    'dates': DateTime(2023, 8, 27),
    'question': 'chnouma loura9 ali n3mlhom bch nkhed titre belu',
    'files': 'kifch njem nchki b3bed sra9ni',
    'peroirte': 'kifch njem nchki b3bed sra9ni',
  },
  {
    'name': 'arth',
    'statu': 'valide',
    'clientname': 'aymen hayder',
    'assignedto': 'Mohamed bganda',
    'dates': DateTime(2023, 8, 27),
    'question': 'kifch n3ml mliar',
    'files': 'kifch njem nchki b3bed sra9ni',
    'peroirte': 'kifch njem nchki b3bed sra9ni',
  },
  {
    'name': 'arth',
    'statu': 'clôturer',
    'clientname': 'asma salem',
    'assignedto': 'Mohamed bganda',
    'dates': DateTime(2023, 8, 27),
    'question': 'chnouma loura9 ali n3mlhom bch nkhed titre belu',
    'files': 'kifch njem nchki b3bed sra9ni',
    'peroirte': 'kifch njem nchki b3bed sra9ni',
  },
];

List<BloglistModel> bloglist = [
  BloglistModel(
    'Loi de chômage',
    'Vous pouvez avoir de l\'argent si vous \n êtes au chômage',
    AppImageAsset.onBoardingImageOne,
    'Financière',
    '32 Sep, 2023',
  ),
  BloglistModel(
    'Loi de chômage',
    'Vous pouvez avoir de l\'argent si vous êtes au chômage',
    AppImageAsset.onBoardingImageOne,
    'Financière',
    '32 Sep, 2023',
  ),
];

List<Map<String, dynamic>> offreList = [
  {
    'nom': 'Small Offre',
    'description': 'Special offer for a limited time',
    'price': 750,
    'nbTickets': 3,
    'period': 5,
  },
  {
    'nom': 'Offre 3',
    'description': 'Special offer for a limited time',
    'price': 500,
    'nbTickets': 2,
    'period': 3,
  },
];

List<BottomNavigationBarItem> navBarclientItems = [
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
List<BottomNavigationBarItem> navBarexpertItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.ticketSimple),
    label: 'tickets',
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
