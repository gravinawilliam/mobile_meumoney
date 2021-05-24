import 'dart:convert';

class TransactionModel {
  String id;
  double value;
  String transactionType;
  String title;
  String note;
  String date;
  String symbolCoin;
  String userId;
  String fromBankAccountId;
  String? toBankAccountId;

  TransactionModel({
    required this.id,
    required this.value,
    required this.transactionType,
    required this.title,
    required this.note,
    required this.date,
    required this.symbolCoin,
    required this.userId,
    required this.fromBankAccountId,
    this.toBankAccountId,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'value': value,
        'transactionType': transactionType,
        'title': title,
        'note': note,
        'date': date,
        'symbolCoin': symbolCoin,
        'userId': userId,
        'fromBankAccountId': fromBankAccountId,
        'toBankAccountId': toBankAccountId,
      };

  factory TransactionModel.fromMap(Map<String, dynamic> map) =>
      TransactionModel(
        id: map['id'],
        value: map['value'],
        transactionType: map['transactionType'],
        title: map['title'],
        note: map['note'],
        date: map['date'],
        symbolCoin: map['symbolCoin'],
        userId: map['userId'],
        fromBankAccountId: map['fromBankAccountId'],
        toBankAccountId: map['toBankAccountId'],
      );

  String toJson() => json.encode(toMap());

  factory TransactionModel.fromJson(String source) =>
      TransactionModel.fromMap(json.decode(source));
}
