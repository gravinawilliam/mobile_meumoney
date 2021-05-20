import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import '../../shared/services/user_service.dart';
import 'authenticate_register_page.dart';
import 'authenticate_register_store.dart';
import 'repositories/authenticate_repository.dart';

class AuthenticateRegisterModule extends Module {
  @override
  final List<Bind> binds = [
    $AuthenticateRegisterStore,
    $AuthenticateRepository,
    $UserService,
    Bind((i) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutersConst.authenticateRegister,
      child: (_, args) => AuthenticateRegisterPage(),
    ),
  ];
}
