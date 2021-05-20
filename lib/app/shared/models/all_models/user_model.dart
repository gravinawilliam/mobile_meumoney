import 'dart:convert';

import '../models.dart';

class UserModel {
  String id;
  String name;
  String email;
  List<BankAccountModel> bankAccounts;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.bankAccounts,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'bankAccounts': bankAccounts.map((x) => x.toMap()).toList(),
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        bankAccounts: List<BankAccountModel>.from(
          map['bankAccounts']?.map(
            (x) => BankAccountModel.fromMap(x),
          ),
        ),
      );

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(source) => UserModel.fromMap(json.decode(source));

  static UserModel? user;
  static String? token;
}
