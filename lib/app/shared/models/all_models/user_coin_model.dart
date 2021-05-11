import 'dart:convert';

import '../models.dart';

class UserCoinModel {
  String id;
  CoinModel coin;

  UserCoinModel({
    required this.id,
    required this.coin,
  });

  UserCoinModel copyWith({
    String? id,
    CoinModel? coin,
  }) =>
      UserCoinModel(
        id: id ?? this.id,
        coin: coin ?? this.coin,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'coin': coin.toMap(),
      };

  factory UserCoinModel.fromMap(Map<String, dynamic> map) => UserCoinModel(
        id: map['id'],
        coin: CoinModel.fromMap(map['coin']),
      );

  String toJson() => json.encode(toMap());

  factory UserCoinModel.fromJson(String source) =>
      UserCoinModel.fromMap(json.decode(source));
}
