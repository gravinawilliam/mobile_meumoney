import '../../../shared/models/models.dart';

class ResponseCreateSessionModel {
  UserModel user = UserModel(
    email: '',
    id: '',
    name: '',
  );
  String token = '';

  ResponseCreateSessionModel({
    required this.user,
    required this.token,
  });

  ResponseCreateSessionModel.fromJson(Map<String, dynamic> json) {
    user = (json['user'] != null ? UserModel.fromJson(json['user']) : null)!;
    token = json['token'];
  }
}
