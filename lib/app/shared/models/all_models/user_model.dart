import 'dart:convert';

import '../models.dart';

class UserModel {
  String id;
  String name;
  String email;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    List<BankAccountModel>? bankAccounts,
  });

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

  factory UserModel.fromJson(source) => UserModel.fromMap(json.decode(source));

  static UserModel? user;
  static String? token;
  static List<BankAccountModel>? bankAccounts;
}
