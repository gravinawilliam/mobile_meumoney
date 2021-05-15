// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_register_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AuthenticateRegisterStore = BindInject(
  (i) => AuthenticateRegisterStore(i<IAuthenticateRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticateRegisterStore on _AuthenticateRegisterStoreBase, Store {
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_AuthenticateRegisterStoreBase.emailValid'))
          .value;
  Computed<bool>? _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_AuthenticateRegisterStoreBase.passwordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_AuthenticateRegisterStoreBase.isFormValid'))
          .value;
  Computed<Function?>? _$loginPressedComputed;

  @override
  Function? get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function?>(() => super.loginPressed,
              name: '_AuthenticateRegisterStoreBase.loginPressed'))
          .value;
  Computed<CreateSessionModel>? _$credentialComputed;

  @override
  CreateSessionModel get credential => (_$credentialComputed ??=
          Computed<CreateSessionModel>(() => super.credential,
              name: '_AuthenticateRegisterStoreBase.credential'))
      .value;

  final _$indexedStackAtom =
      Atom(name: '_AuthenticateRegisterStoreBase.indexedStack');

  @override
  int get indexedStack {
    _$indexedStackAtom.reportRead();
    return super.indexedStack;
  }

  @override
  set indexedStack(int value) {
    _$indexedStackAtom.reportWrite(value, super.indexedStack, () {
      super.indexedStack = value;
    });
  }

  final _$btnControllerAtom =
      Atom(name: '_AuthenticateRegisterStoreBase.btnController');

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

  final _$emailAtom = Atom(name: '_AuthenticateRegisterStoreBase.email');

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
      Atom(name: '_AuthenticateRegisterStoreBase.enableTextFormField');

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

  final _$passwordAtom = Atom(name: '_AuthenticateRegisterStoreBase.password');

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

  final _$loginAsyncAction =
      AsyncAction('_AuthenticateRegisterStoreBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_AuthenticateRegisterStoreBaseActionController =
      ActionController(name: '_AuthenticateRegisterStoreBase');

  @override
  void trocaIndexedStack() {
    final _$actionInfo = _$_AuthenticateRegisterStoreBaseActionController
        .startAction(name: '_AuthenticateRegisterStoreBase.trocaIndexedStack');
    try {
      return super.trocaIndexedStack();
    } finally {
      _$_AuthenticateRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_AuthenticateRegisterStoreBaseActionController
        .startAction(name: '_AuthenticateRegisterStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_AuthenticateRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_AuthenticateRegisterStoreBaseActionController
        .startAction(name: '_AuthenticateRegisterStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_AuthenticateRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexedStack: ${indexedStack},
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
