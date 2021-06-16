import 'dart:convert';

class RequestCreateTransactionModel {
  String note;
  String title;
  String transactionType;
  double value;
  String date;
  String symbolCoin;
  String fromBankAccount;
  RequestCreateTransactionModel({
    required this.note,
    required this.title,
    required this.transactionType,
    required this.value,
    required this.date,
    required this.symbolCoin,
    required this.fromBankAccount,
  });

  Map<String, dynamic> toMap() => {
        'note': note,
        'title': title,
        'transactionType': transactionType,
        'value': value,
        'date': date,
        'symbolCoin': symbolCoin,
        'fromBankAccount': fromBankAccount,
      };

  factory RequestCreateTransactionModel.fromMap(Map<String, dynamic> map) =>
      RequestCreateTransactionModel(
        note: map['note'],
        title: map['title'],
        transactionType: map['transactionType'],
        value: map['value'],
        date: map['date'],
        symbolCoin: map['symbolCoin'],
        fromBankAccount: map['fromBankAccount'],
      );

  String toJson() => json.encode(toMap());

  factory RequestCreateTransactionModel.fromJson(String source) =>
      RequestCreateTransactionModel.fromMap(json.decode(source));
}
