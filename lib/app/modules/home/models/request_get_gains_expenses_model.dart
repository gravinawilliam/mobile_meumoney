import 'dart:convert';

class RequestGetGainsExpenseModel {
  String bankAccountId;
  int year;
  int month;

  RequestGetGainsExpenseModel({
    required this.bankAccountId,
    required this.year,
    required this.month,
  });

  Map<String, dynamic> toMap() => {
        'bankAccountId': bankAccountId,
        'year': year,
        'month': month,
      };

  factory RequestGetGainsExpenseModel.fromMap(Map<String, dynamic> map) =>
      RequestGetGainsExpenseModel(
        bankAccountId: map['bankAccountId'],
        year: map['year'],
        month: map['month'],
      );

  String toJson() => json.encode(toMap());

  factory RequestGetGainsExpenseModel.fromJson(String source) =>
      RequestGetGainsExpenseModel.fromMap(json.decode(source));
}
