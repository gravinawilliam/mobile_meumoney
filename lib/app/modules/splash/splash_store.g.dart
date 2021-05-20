// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SplashStore = BindInject(
  (i) => SplashStore(i<IUserService>(), i<ISplashRepository>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStoreBase, Store {
  final _$verifyCurrentUserAsyncAction =
      AsyncAction('_SplashStoreBase.verifyCurrentUser');

  @override
  Future<void> verifyCurrentUser() {
    return _$verifyCurrentUserAsyncAction.run(() => super.verifyCurrentUser());
  }

  final _$getUserApiAsyncAction = AsyncAction('_SplashStoreBase.getUserApi');

  @override
  Future<void> getUserApi({required String token}) {
    return _$getUserApiAsyncAction.run(() => super.getUserApi(token: token));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
