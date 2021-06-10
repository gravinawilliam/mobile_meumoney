import 'dart:convert';

class CreateBankAccountModel {
  String accountNumbers;
  double balance;
  String cardHolderName;
  String bankId;
  int montValidity;
  int yearValidity;
  String symbolCoin;

  CreateBankAccountModel({
    required this.accountNumbers,
    required this.balance,
    required this.cardHolderName,
    required this.bankId,
    required this.montValidity,
    required this.yearValidity,
    required this.symbolCoin,
  });

  Map<String, dynamic> toMap() => {
        'accountNumbers': accountNumbers,
        'balance': balance,
        'cardHolderName': cardHolderName,
        'bankId': bankId,
        'montValidity': montValidity,
        'yearValidity': yearValidity,
        'symbolCoin': symbolCoin,
      };

  factory CreateBankAccountModel.fromMap(Map<String, dynamic> map) =>
      CreateBankAccountModel(
        accountNumbers: map['accountNumbers'],
        balance: map['balance'],
        cardHolderName: map['cardHolderName'],
        bankId: map['bankId'],
        montValidity: map['montValidity'],
        yearValidity: map['yearValidity'],
        symbolCoin: map['symbolCoin'],
      );

  String toJson() => json.encode(toMap());

  factory CreateBankAccountModel.fromJson(String source) =>
      CreateBankAccountModel.fromMap(json.decode(source));
}
