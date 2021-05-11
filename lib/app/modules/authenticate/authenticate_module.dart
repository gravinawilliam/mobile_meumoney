import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/constants.dart';
import 'authenticate_page.dart';
import 'authenticate_store.dart';
import 'repositories/authenticate_repository.dart';

class AuthenticateModule extends Module {
  @override
  final List<Bind> binds = [
    $AuthenticateStore,
    $AuthenticateRepository,
    Bind((i) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutersConst.authenticate,
      transition: TransitionType.leftToRight,
      child: (_, args) => AuthenticatePage(),
    ),
  ];
}
