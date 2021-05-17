import 'dart:convert';

class CreateUserModel {
  String name;
  String email;
  String password;

  CreateUserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'password': password,
      };

  factory CreateUserModel.fromMap(Map<String, dynamic> map) => CreateUserModel(
        name: map['name'],
        email: map['email'],
        password: map['password'],
      );

  String toJson() => json.encode(toMap());

  factory CreateUserModel.fromJson(String source) =>
      CreateUserModel.fromMap(json.decode(source));
}
