part of fk_phone_utils;

class TextSanitizer {
  String sanitizePhoneNumber(String phone) {
    return phone
        .replaceAll('-', '')
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll(' ', '');
  }

  String sanitizeArray(String text) {
    return text.replaceAll('[', '').replaceAll(']', '').replaceAll(' ', '');
  }

  String sanitizeAllSymbols(String text) {
    return text.trim().replaceAll(RegExp(r'(?:_|[^\w\s])+'), '');
  }
}
