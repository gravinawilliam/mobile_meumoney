import 'dart:convert';

class NotificationModel {
  String id;
  String content;

  NotificationModel({
    required this.id,
    required this.content,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'content': content,
      };

  factory NotificationModel.fromMap(Map<String, dynamic> map) =>
      NotificationModel(
        id: map['id'],
        content: map['content'],
      );

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source));
}
