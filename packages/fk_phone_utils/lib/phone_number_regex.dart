part of phone_utils;

class PhoneNumberRegex {
  final _textSanitizer = TextSanitizer();

  bool validatePhoneNumber(String phone) {
    final sanitizedPhone =
        _textSanitizer.sanitizePhoneNumber(phone).replaceAll('+', '');
    final RegExp regExp = RegExp(r'^[0-9]{8,13}$');
    if (sanitizedPhone.isEmpty || !regExp.hasMatch(sanitizedPhone)) {
      return false;
    } else {
      return true;
    }
  }

  String parsePhoneNumber(String phone, String countryCode) {
    final sanitizedPhone = _textSanitizer.sanitizePhoneNumber(phone);
    if (phone[0] != '+') {
      return countryCode + sanitizedPhone;
    } else {
      return sanitizedPhone;
    }
  }
}
