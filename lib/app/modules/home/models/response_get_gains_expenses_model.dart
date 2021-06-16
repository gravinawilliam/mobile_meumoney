import 'dart:convert';

class ResponseGetGainsExpenseModel {
  double earningsAmount;
  double expenseAmount;

  ResponseGetGainsExpenseModel({
    required this.earningsAmount,
    required this.expenseAmount,
  });

  Map<String, dynamic> toMap() => {
        'earningsAmount': earningsAmount,
        'expenseAmount': expenseAmount,
      };

  factory ResponseGetGainsExpenseModel.fromMap(Map<String, dynamic> map) {
    var gains = map['earningsAmount'];
    var expenses = map['expenseAmount'];
    return ResponseGetGainsExpenseModel(
      earningsAmount: gains.toDouble(),
      expenseAmount: expenses.toDouble(),
    );
  }
  String toJson() => json.encode(toMap());

  factory ResponseGetGainsExpenseModel.fromJson(String source) =>
      ResponseGetGainsExpenseModel.fromMap(json.decode(source));
}
