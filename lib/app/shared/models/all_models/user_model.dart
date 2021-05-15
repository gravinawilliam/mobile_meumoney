import 'dart:convert';

class UserModel {
  String id;
  String name;
  String email;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });

  static UserModel? user;
  static String? token;

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        id: map['id'],
        name: map['name'],
        email: map['email'],
      );

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
