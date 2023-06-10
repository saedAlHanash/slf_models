
class User {
  User({
    required this.id,
    required this.userName,
    required this.fullName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.userEmail,
    required this.birthDate,
    required this.gender,
    required this.imageUrl,
    required this.isActive,
    required this.lastLoginTime,
    required this.creationTime,
    required this.roleNames,
    required this.permissionsNames,
  });

  final int id;
  final String userName;
  final String fullName;
  final String emailAddress;
  final String phoneNumber;
  final String userEmail;
  final DateTime? birthDate;
  final int gender;
  final String imageUrl;
  final bool isActive;
  final DateTime? lastLoginTime;
  final DateTime? creationTime;
  final List<String> roleNames;
  final List<String> permissionsNames;

  bool get isGuest => id == 0;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"] ?? 0,
      userName: json["userName"] ?? "",
      fullName: json["fullName"] ?? "",
      emailAddress: json["emailAddress"] ?? "",
      phoneNumber: json["phoneNumber"] ?? "",
      userEmail: json["userEmail"] ?? "",
      birthDate: DateTime.tryParse(json["birthDate"] ?? ""),
      gender: json["gender"] ?? 0,
      imageUrl: json["imageUrl"] ?? "",
      isActive: json["isActive"] ?? false,
      lastLoginTime: DateTime.tryParse(json["lastLoginTime"] ?? ""),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      roleNames: json["roleNames"] == null
          ? []
          : List<String>.from(json["roleNames"]!.map((x) => x)),
      permissionsNames: json["permissionsNames"] == null
          ? []
          : List<String>.from(json["permissionsNames"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "userName": userName,
    "fullName": fullName,
    "emailAddress": emailAddress,
    "phoneNumber": phoneNumber,
    "userEmail": userEmail,
    "birthDate": birthDate?.toIso8601String(),
    "gender": gender,
    "imageUrl": imageUrl,
    "isActive": isActive,
    "lastLoginTime": lastLoginTime?.toIso8601String(),
    "creationTime": creationTime?.toIso8601String(),
    "roleNames": roleNames.map((x) => x).toList(),
    "permissionsNames": permissionsNames.map((x) => x).toList(),
  };
}