import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:projet/controller/client/homepage.dart';

import '../../../data/datasource/static/statick.dart';
import '../../widget/client/carousel.dart';

class ClientHomepage extends StatelessWidget {
  final ClientHomepageController controller =
      Get.put(ClientHomepageControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselWidget(carouselItems: carouselItems),
        ],
      ),
    );
  }
}
