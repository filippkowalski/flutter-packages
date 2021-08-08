part of fk_phone_utils;

class PhoneContactsProvider {
  final _phoneRegex = PhoneNumberRegex();
  final _hashGenerator = PhoneHashGenerator();

  Future<List<PhoneBookContact>> get(String countryCode) async {
    final contactsIterable = await ContactsService.getContacts();

    final List<Contact> contacts = contactsIterable.where((contact) {
      final nameNotEmpty = contact.displayName != null;
      final phoneNumberNotEmpty = contact.phones?.isNotEmpty;
      final hasAnyValidPhoneNumber = contact.phones
          ?.any((item) => _phoneRegex.validatePhoneNumber(item.value));
      return nameNotEmpty && phoneNumberNotEmpty && hasAnyValidPhoneNumber;
    }).toList();

    final List<PhoneBookContact> friends = <PhoneBookContact>[];
    contacts.forEach((contact) {
      final matchingPhoneNumbers = contact.phones
          .where((item) => _phoneRegex.validatePhoneNumber(item.value));
      matchingPhoneNumbers.forEach((matchingPhoneNumber) {
        final parsedPhoneNumber = _phoneRegex.parsePhoneNumber(
            matchingPhoneNumber.value, countryCode);
        friends.add(PhoneBookContact(
            name: contact?.displayName ??
                contact?.givenName ??
                contact?.middleName ??
                contact?.familyName ??
                'No name',
            initials: _getInitials(contact.displayName),
            avatar: contact?.avatar,
            phoneHash: _hashGenerator.generateHash(parsedPhoneNumber),
            phoneNumber: parsedPhoneNumber));
      });
    });
    friends.sort((a, b) => a.name.compareTo(b.name));

    return friends;
  }

  String _getInitials(String displayName) {
    if (displayName.isEmpty) return '';
    return displayName[0].toUpperCase();
  }
}
