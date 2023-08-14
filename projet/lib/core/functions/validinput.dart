import 'package:get/get.dart';

String s = "";
String a = "";
validInput(
  String val,
  String type,
  int min,
  int max,
) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "user name non valide";
    }
  }
  if (type == "password") {
    if (s != (val)) {
      s = val;
    }
  }
  if (type == "confirmpassword") {
    if ((val) != s) {
      return "différent mote de pass";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return " non valide";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return " name non valide";
    }
  }
  if (val.isEmpty) {
    return "  valeur est vide";
  }
  if (val.length < min) {
    return "  minimum est $val";
  }
  if (val.length > max) {
    return "  minimum est $max";
  }
}
