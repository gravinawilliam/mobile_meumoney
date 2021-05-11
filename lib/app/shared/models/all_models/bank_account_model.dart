import 'dart:convert';

import '../models.dart';

class BankAccountModel {
  String id;
  String accountNumbers;
  String cardholderName;
  String monthValidity;
  String yearValidity;
  double balance;
  int redRgbColorCard;
  int greenRgbColorCard;
  int blueRgbColorCard;
  String userId;
  String bankId;
  String coinId;
  BankModel bank;
  CoinModel coin;

  BankAccountModel({
    required this.id,
    required this.accountNumbers,
    required this.cardholderName,
    required this.monthValidity,
    required this.yearValidity,
    required this.balance,
    required this.redRgbColorCard,
    required this.greenRgbColorCard,
    required this.blueRgbColorCard,
    required this.userId,
    required this.bankId,
    required this.coinId,
    required this.bank,
    required this.coin,
  });

  BankAccountModel copyWith({
    String? id,
    String? accountNumbers,
    String? cardholderName,
    String? monthValidity,
    String? yearValidity,
    double? balance,
    int? redRgbColorCard,
    int? greenRgbColorCard,
    int? blueRgbColorCard,
    String? userId,
    String? bankId,
    String? coinId,
    BankModel? bank,
    CoinModel? coin,
  }) =>
      BankAccountModel(
        id: id ?? this.id,
        accountNumbers: accountNumbers ?? this.accountNumbers,
        cardholderName: cardholderName ?? this.cardholderName,
        monthValidity: monthValidity ?? this.monthValidity,
        yearValidity: yearValidity ?? this.yearValidity,
        balance: balance ?? this.balance,
        redRgbColorCard: redRgbColorCard ?? this.redRgbColorCard,
        greenRgbColorCard: greenRgbColorCard ?? this.greenRgbColorCard,
        blueRgbColorCard: blueRgbColorCard ?? this.blueRgbColorCard,
        userId: userId ?? this.userId,
        bankId: bankId ?? this.bankId,
        coinId: coinId ?? this.coinId,
        bank: bank ?? this.bank,
        coin: coin ?? this.coin,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'accountNumbers': accountNumbers,
        'cardholderName': cardholderName,
        'monthValidity': monthValidity,
        'yearValidity': yearValidity,
        'balance': balance,
        'redRgbColorCard': redRgbColorCard,
        'greenRgbColorCard': greenRgbColorCard,
        'blueRgbColorCard': blueRgbColorCard,
        'userId': userId,
        'bankId': bankId,
        'coinId': coinId,
        'bank': bank.toMap(),
        'coin': coin.toMap(),
      };

  factory BankAccountModel.fromMap(Map<String, dynamic> map) =>
      BankAccountModel(
        id: map['id'],
        accountNumbers: map['accountNumbers'],
        cardholderName: map['cardholderName'],
        monthValidity: map['monthValidity'],
        yearValidity: map['yearValidity'],
        balance: map['balance'],
        redRgbColorCard: map['redRgbColorCard'],
        greenRgbColorCard: map['greenRgbColorCard'],
        blueRgbColorCard: map['blueRgbColorCard'],
        userId: map['userId'],
        bankId: map['bankId'],
        coinId: map['coinId'],
        bank: BankModel.fromMap(map['bank']),
        coin: CoinModel.fromMap(map['coin']),
      );

  String toJson() => json.encode(toMap());

  factory BankAccountModel.fromJson(String source) =>
      BankAccountModel.fromMap(json.decode(source));
}
