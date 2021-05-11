import 'dart:convert';

class CreateSessionModel {
  String communicator;
  String password;

  CreateSessionModel({
    required this.communicator,
    required this.password,
  });

  Map<String, dynamic> toMap() => {
        'communicator': communicator,
        'password': password,
      };

  factory CreateSessionModel.fromMap(Map<String, dynamic> map) =>
      CreateSessionModel(
        communicator: map['communicator'],
        password: map['password'],
      );

  String toJson() => json.encode(toMap());

  factory CreateSessionModel.fromJson(String source) =>
      CreateSessionModel.fromMap(json.decode(source));
}
