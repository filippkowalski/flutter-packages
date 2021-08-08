part of fk_phone_utils;

PhoneBookContact contactFromJson(String str) =>
    PhoneBookContact.fromJson(json.decode(str));

String contactToJson(PhoneBookContact data) => json.encode(data.toJson());

class PhoneBookContact {
  PhoneBookContact(
      {this.name,
      this.initials,
      this.phoneNumber,
      this.phoneHash,
      this.avatar});

  String name;
  String initials;
  String phoneNumber;
  String phoneHash;
  Uint8List avatar;

  factory PhoneBookContact.fromJson(Map<String, dynamic> json) =>
      PhoneBookContact(
          name: json['name'],
          initials: json['initials'],
          phoneNumber: json['phoneNumber'],
          phoneHash: json['phoneHash']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'initials': initials,
        'phoneNumber': phoneNumber,
        'phoneHash': phoneHash
      };
}
