import 'package:get/get.dart';
import 'package:projet/controller/auth/signup.dart';
import 'package:projet/core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put(Crud());
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }
}
