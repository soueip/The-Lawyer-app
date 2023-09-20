import 'package:get/get.dart';

validticket(
  String val,
  String type,
  int min,
  int max,
) {
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return " phone non valide";
    }
  }
  if (val.isEmpty) {
    return "  valeur est vide";
  }
  if (val.length < min) {
    return "  minimum est $min";
  }
  if (val.length > max) {
    return "  minimum est $max";
  }
}
