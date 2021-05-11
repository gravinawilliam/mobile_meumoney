import '../models.dart';

class UserModel {
  String id = '';
  String name = '';
  String? cellphone;
  String email = '';
  List<BankAccountModel>? bankAccounts;
  List<UserCoinModel>? userCoins;
  String? avatarUrl;
  String? token;

  UserModel({
    required this.id,
    required this.name,
    this.cellphone,
    required this.email,
    this.bankAccounts,
    this.userCoins,
    this.avatarUrl,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cellphone = json['cellphone'];
    email = json['email'];
    if (json['bankAccounts'] != null) {
      bankAccounts = <BankAccountModel>[];
      json['bankAccounts'].forEach((v) {
        bankAccounts!.add(BankAccountModel.fromJson(v));
      });
    }
    if (json['userCoins'] != null) {
      userCoins = <UserCoinModel>[];
      json['userCoins'].forEach((v) {
        userCoins!.add(UserCoinModel.fromJson(v));
      });
    }
    avatarUrl = json['avatarUrl'];
  }

  static UserModel? user;
}
