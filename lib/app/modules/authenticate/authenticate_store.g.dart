// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AuthenticateStore = BindInject(
  (i) => AuthenticateStore(i<IAuthenticateRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticateStore on _AuthenticateStoreBase, Store {
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_AuthenticateStoreBase.emailValid'))
          .value;
  Computed<bool>? _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_AuthenticateStoreBase.passwordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_AuthenticateStoreBase.isFormValid'))
          .value;
  Computed<Function?>? _$loginPressedComputed;

  @override
  Function? get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function?>(() => super.loginPressed,
              name: '_AuthenticateStoreBase.loginPressed'))
          .value;
  Computed<CreateSessionModel>? _$credentialComputed;

  @override
  CreateSessionModel get credential => (_$credentialComputed ??=
          Computed<CreateSessionModel>(() => super.credential,
              name: '_AuthenticateStoreBase.credential'))
      .value;

  final _$btnControllerAtom =
      Atom(name: '_AuthenticateStoreBase.btnController');

  @override
  RoundedLoadingButtonController get btnController {
    _$btnControllerAtom.reportRead();
    return super.btnController;
  }

  @override
  set btnController(RoundedLoadingButtonController value) {
    _$btnControllerAtom.reportWrite(value, super.btnController, () {
      super.btnController = value;
    });
  }

  final _$emailAtom = Atom(name: '_AuthenticateStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$enableTextFormFieldAtom =
      Atom(name: '_AuthenticateStoreBase.enableTextFormField');

  @override
  bool get enableTextFormField {
    _$enableTextFormFieldAtom.reportRead();
    return super.enableTextFormField;
  }

  @override
  set enableTextFormField(bool value) {
    _$enableTextFormFieldAtom.reportWrite(value, super.enableTextFormField, () {
      super.enableTextFormField = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthenticateStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_AuthenticateStoreBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_AuthenticateStoreBaseActionController =
      ActionController(name: '_AuthenticateStoreBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_AuthenticateStoreBaseActionController.startAction(
        name: '_AuthenticateStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_AuthenticateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_AuthenticateStoreBaseActionController.startAction(
        name: '_AuthenticateStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_AuthenticateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
btnController: ${btnController},
email: ${email},
enableTextFormField: ${enableTextFormField},
password: ${password},
emailValid: ${emailValid},
passwordValid: ${passwordValid},
isFormValid: ${isFormValid},
loginPressed: ${loginPressed},
credential: ${credential}
    ''';
  }
}
