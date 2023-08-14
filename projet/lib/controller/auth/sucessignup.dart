import 'package:get/get.dart';
import 'package:projet/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  checkcode();
  goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  late String verifycode;

  @override
  checkcode() {}

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
