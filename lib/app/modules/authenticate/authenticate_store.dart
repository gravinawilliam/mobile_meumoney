import 'package:asuka/asuka.dart' as asuka;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import 'errors/errors.dart';
import 'interfaces/authenticate_repository_interface.dart';
import 'models/create_session_model.dart';
import 'models/response_create_session_model.dart';

part 'authenticate_store.g.dart';

@Injectable(singleton: false)
class AuthenticateStore = _AuthenticateStoreBase with _$AuthenticateStore;

abstract class _AuthenticateStoreBase with Store {
  final IAuthenticateRepository repository;

  _AuthenticateStoreBase(
    this.repository,
  );

  @observable
  RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();

  @observable
  String email = '';

  @observable
  bool enableTextFormField = true;

  @observable
  String password = '';

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get emailValid => email.isNotEmpty && email.length >= 3;
  String? get emailError =>
      email.isEmpty || email.length >= 2 ? null : "Campo obrigatório";

  @computed
  bool get passwordValid => password.isNotEmpty && password.length > 6;
  String? get passwordError {
    if (password.isEmpty || passwordValid) {
      return null;
    } else if (password.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "A senha precisa ter mais de 6 caracteres";
    }
  }

  @computed
  bool get isFormValid => emailValid && passwordValid;

  @computed
  Function? get loginPressed => (isFormValid) ? login : null;

  @computed
  CreateSessionModel get credential => CreateSessionModel(
        communicator: email,
        password: password,
      );

  @action
  Future<void> login() async {
    try {
      enableTextFormField = false;
      Either<Failure, ResponseCreateSessionModel> loginUserResponse =
          await repository.createSession(credential);
      loginUserResponse.fold(
        (failure) {},
        (response) async {
          btnController.success();
          UserModel.user = response.user;
          UserModel.user!.token = response.token;
          Modular.to.navigate('/root/chat/');
        },
      );
    } catch (e) {
      asuka.showSnackBar(
        SnackBar(
          backgroundColor: DarkColorsConst.primary,
          content: Text(
            "Username ou senha incorreto",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DarkColorsConst.textPrimary,
              fontSize: 16,
            ),
          ),
        ),
      );
      btnController.error();
      await Future.delayed(Duration(milliseconds: 1300));
      enableTextFormField = true;
    } finally {
      btnController.reset();
    }
  }
}
