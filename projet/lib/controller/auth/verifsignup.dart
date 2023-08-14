import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';

abstract class VerfiySignUpController extends GetxController {
  checkcode();
  goTosuccesssignup();
}

class VerfiySignUpControllerImp extends VerfiySignUpController {
  late String verifycode;

  @override
  checkcode() {}

  @override
  goTosuccesssignup() {
    Get.offNamed(AppRoute.successsignup);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
