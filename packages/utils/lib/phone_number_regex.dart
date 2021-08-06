part of utils;

class PhoneNumberRegex {
  var _phoneSanitizer = TextSanitizer();

  bool validatePhoneNumber(String phone) {
    var sanitizedPhone =
        _phoneSanitizer.sanitizePhoneNumber(phone).replaceAll("+", "");
    RegExp regExp = new RegExp(r'^[0-9]{8,13}$');
    if (sanitizedPhone.length == 0 || !regExp.hasMatch(sanitizedPhone)) {
      return false;
    } else {
      return true;
    }
  }

  String parsePhoneNumber(String phone, String countryCode) {
    var sanitizedPhone = _phoneSanitizer.sanitizePhoneNumber(phone);
    if (phone[0] != "+") {
      return countryCode + sanitizedPhone;
    } else {
      return sanitizedPhone;
    }
  }
}
