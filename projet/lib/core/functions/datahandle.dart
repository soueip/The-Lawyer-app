import 'package:projet/core/class/statusrequest.dart';

handleData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
