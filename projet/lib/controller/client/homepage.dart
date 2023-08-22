import 'package:get/get.dart';

class ClientHomepageController extends GetxController {
  // Current page index
  RxInt currentPageIndex = 0.obs;

  // Method to update the current page index
  void updateCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }

  // Add any other controller logic you might need here
}

class ClientHomepageControllerImp extends ClientHomepageController {
  @override
  void onInit() {
    super.onInit();
    // Initialize any data or perform actions when the controller is initialized
  }
}
