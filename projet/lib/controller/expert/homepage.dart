import 'package:get/get.dart';

class ExpertHomepageController extends GetxController {
  // Current page index
  RxInt currentPageIndex = 0.obs;

  get latestTicket => null;

  get tickets => null;

  void updateCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }
}

class ExpertHomepageControllerImp extends ExpertHomepageController {}

class OffreCarouselController extends GetxController {
  RxInt currentPageIndex = 0.obs;

  get latestTicket => null;

  get tickets => null;

  void updateCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }
}
