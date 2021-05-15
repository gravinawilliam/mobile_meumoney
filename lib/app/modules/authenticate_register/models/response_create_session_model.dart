import 'dart:convert';

import '../../../shared/models/models.dart';

class ResponseCreateSessionModel {
  UserModel user;
  String token;
  ResponseCreateSessionModel({
    required this.user,
    required this.token,
  });

  ResponseCreateSessionModel copyWith({
    UserModel? user,
    String? token,
  }) =>
      ResponseCreateSessionModel(
        user: user ?? this.user,
        token: token ?? this.token,
      );

  Map<String, dynamic> toMap() => {
        'user': user.toMap(),
        'token': token,
      };

  factory ResponseCreateSessionModel.fromMap(Map<String, dynamic> map) =>
      ResponseCreateSessionModel(
        user: UserModel.fromMap(map['user']),
        token: map['token'],
      );

  String toJson() => json.encode(toMap());

  factory ResponseCreateSessionModel.fromJson(String source) =>
      ResponseCreateSessionModel.fromMap(json.decode(source));
}
