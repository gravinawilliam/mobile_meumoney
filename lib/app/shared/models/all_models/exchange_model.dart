import 'dart:convert';

class ExchangeModel {
  String id;
  String name;
  String symbol;
  double buy;
  ExchangeModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.buy,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'symbol': symbol,
        'buy': buy,
      };

  factory ExchangeModel.fromMap(Map<String, dynamic> map) => ExchangeModel(
        id: map['id'],
        name: map['name'],
        symbol: map['symbol'],
        buy: map['buy'],
      );

  String toJson() => json.encode(toMap());

  factory ExchangeModel.fromJson(String source) =>
      ExchangeModel.fromMap(json.decode(source));
}
