import 'dart:convert';

class BankModel {
  String id;
  String name;
  int redColorCard;
  int greenColorCard;
  int blueColorCard;
  String logoUrl;

  BankModel({
    required this.id,
    required this.name,
    required this.redColorCard,
    required this.greenColorCard,
    required this.blueColorCard,
    required this.logoUrl,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'redColorCard': redColorCard,
        'greenColorCard': greenColorCard,
        'blueColorCard': blueColorCard,
        'logo_url': logoUrl,
      };

  factory BankModel.fromMap(Map<String, dynamic> map) => BankModel(
        id: map['id'],
        name: map['name'],
        redColorCard: map['redColorCard'],
        greenColorCard: map['greenColorCard'],
        blueColorCard: map['blueColorCard'],
        logoUrl: map['logo_url'],
      );

  String toJson() => json.encode(toMap());

  factory BankModel.fromJson(String source) =>
      BankModel.fromMap(json.decode(source));
}
