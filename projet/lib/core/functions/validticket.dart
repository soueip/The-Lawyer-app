String? validticket(String val, int min, int max) {
  if (val.isEmpty) {
    return "Value is empty";
  }
  if (val.length < min) {
    return "Minimum length is $min characters";
  }
  if (val.length > max) {
    return "Maximum length is $max characters";
  }
  return null; // Validation succeeded, return null
}
