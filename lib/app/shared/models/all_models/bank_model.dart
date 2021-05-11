import 'dart:convert';

class BankModel {
  String id;
  String name;
  int redRgbColorCard;
  int greenRgbColorCard;
  int blueRgbColorCard;
  String logoUrl;
  BankModel({
    required this.id,
    required this.name,
    required this.redRgbColorCard,
    required this.greenRgbColorCard,
    required this.blueRgbColorCard,
    required this.logoUrl,
  });

  BankModel copyWith({
    String? id,
    String? name,
    int? redRgbColorCard,
    int? greenRgbColorCard,
    int? blueRgbColorCard,
    String? logoUrl,
  }) =>
      BankModel(
        id: id ?? this.id,
        name: name ?? this.name,
        redRgbColorCard: redRgbColorCard ?? this.redRgbColorCard,
        greenRgbColorCard: greenRgbColorCard ?? this.greenRgbColorCard,
        blueRgbColorCard: blueRgbColorCard ?? this.blueRgbColorCard,
        logoUrl: logoUrl ?? this.logoUrl,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'redRgbColorCard': redRgbColorCard,
        'greenRgbColorCard': greenRgbColorCard,
        'blueRgbColorCard': blueRgbColorCard,
        'logoUrl': logoUrl,
      };

  factory BankModel.fromMap(Map<String, dynamic> map) => BankModel(
        id: map['id'],
        name: map['name'],
        redRgbColorCard: map['redRgbColorCard'],
        greenRgbColorCard: map['greenRgbColorCard'],
        blueRgbColorCard: map['blueRgbColorCard'],
        logoUrl: map['logoUrl'],
      );

  String toJson() => json.encode(toMap());

  factory BankModel.fromJson(String source) =>
      BankModel.fromMap(json.decode(source));
}
