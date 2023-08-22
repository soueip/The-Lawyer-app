import 'package:get/get.dart';
import 'package:projet/core/functions/datahandle.dart';

import '../core/class/statusrequest.dart';
import '../data/datasource/static/remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("=============================== Controller $response ");

    if (response is Map && response.containsKey('data')) {
      statusRequest = handleData(response);

      if (StatusRequest.success == statusRequest) {
        data.addAll(response['data']);
      }
    }

    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
