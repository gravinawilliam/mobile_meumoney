import 'dart:convert';

import '../models.dart';

class BankAccountModel {
  String id;
  String accountNumbers;
  String cardholderName;
  double balance;
  int monthValidity;
  int yearValidity;
  String userId;
  String bankId;
  String symbolCoin;
  BankModel bank;

  BankAccountModel({
    required this.id,
    required this.accountNumbers,
    required this.cardholderName,
    required this.balance,
    required this.monthValidity,
    required this.yearValidity,
    required this.userId,
    required this.bankId,
    required this.symbolCoin,
    required this.bank,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'accountNumbers': accountNumbers,
        'cardholderName': cardholderName,
        'balance': balance,
        'monthValidity': monthValidity,
        'yearValidity': yearValidity,
        'userId': userId,
        'bankId': bankId,
        'symbolCoin': symbolCoin,
        'bank': bank.toMap(),
      };

  factory BankAccountModel.fromMap(Map<String, dynamic> map) {
    var balance = map['balance'];
    return BankAccountModel(
      id: map['id'],
      accountNumbers: map['accountNumbers'],
      cardholderName: map['cardholderName'],
      balance: balance.toDouble(),
      monthValidity: map['monthValidity'],
      yearValidity: map['yearValidity'],
      userId: map['userId'],
      bankId: map['bankId'],
      symbolCoin: map['symbolCoin'],
      bank: BankModel.fromMap(map['bank']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BankAccountModel.fromJson(String source) =>
      BankAccountModel.fromMap(json.decode(source));
}
