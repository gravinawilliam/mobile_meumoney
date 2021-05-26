// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_content_transaction_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TabBarContentTransactionStore = BindInject(
  (i) => TabBarContentTransactionStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabBarContentTransactionStore
    on _TabBarContentTransactionStoreBase, Store {
  final _$userAtom = Atom(name: '_TabBarContentTransactionStoreBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$buttonControllerAtom =
      Atom(name: '_TabBarContentTransactionStoreBase.buttonController');

  @override
  RoundedLoadingButtonController get buttonController {
    _$buttonControllerAtom.reportRead();
    return super.buttonController;
  }

  @override
  set buttonController(RoundedLoadingButtonController value) {
    _$buttonControllerAtom.reportWrite(value, super.buttonController, () {
      super.buttonController = value;
    });
  }

  @override
  String toString() {
    return '''
user: ${user},
buttonController: ${buttonController}
    ''';
  }
}
