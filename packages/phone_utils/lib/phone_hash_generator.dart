part of phone_utils;

class PhoneHashGenerator {
  final _textSanitizer = TextSanitizer();

  String generateHash(String text) {
    final parsedText = _textSanitizer.sanitizePhoneNumber(text);
    return md5.convert(utf8.encode(parsedText)).toString();
  }
}
