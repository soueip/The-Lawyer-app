import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';

abstract class SuccessPageController extends GetxController {
  checkcode();
  goToLogin();
}

class SuccessPageControllerImp extends SuccessPageController {
  late String verifycode;

  @override
  checkcode() {}

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
