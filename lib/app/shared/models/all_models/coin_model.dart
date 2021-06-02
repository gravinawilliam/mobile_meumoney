import 'dart:convert';

class CoinModel {
  String id;
  String name;
  String acronymName;
  String locale;
  String currencySymbols;

  CoinModel({
    required this.id,
    required this.name,
    required this.acronymName,
    required this.currencySymbols,
    required this.locale,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'acronymName': acronymName,
        'locale': locale,
        'currencySymbols': currencySymbols,
      };

  factory CoinModel.fromMap(Map<String, dynamic> map) => CoinModel(
        id: map['id'],
        name: map['name'],
        acronymName: map['acronymName'],
        locale: map['locale'],
        currencySymbols: map['currencySymbols'],
      );

  String toJson() => json.encode(toMap());

  factory CoinModel.fromJson(String source) =>
      CoinModel.fromMap(json.decode(source));
}
