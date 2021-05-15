import 'dart:convert';

class CreateSessionModel {
  String email;
  String password;

  CreateSessionModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() => {
        'email': email,
        'password': password,
      };

  factory CreateSessionModel.fromMap(Map<String, dynamic> map) =>
      CreateSessionModel(
        email: map['email'],
        password: map['password'],
      );

  String toJson() => json.encode(toMap());

  factory CreateSessionModel.fromJson(String source) =>
      CreateSessionModel.fromMap(json.decode(source));
}
