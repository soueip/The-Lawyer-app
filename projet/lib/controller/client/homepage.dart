import 'package:get/get.dart';

class ClientHomepageController extends GetxController {
  // Current page index
  RxInt currentPageIndex = 0.obs;

  get latestTicket => null;

  get tickets => null;

  // Method to update the current page index
  void updateCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }

  // Add any other controller logic you might need here
}

class ClientHomepageControllerImp extends ClientHomepageController {}

class OffreCarouselController extends GetxController {
  // Current page index
  RxInt currentPageIndex = 0.obs;

  get latestTicket => null;

  get tickets => null;

  // Method to update the current page index
  void updateCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }

  // Add any other controller logic you might need here
}
