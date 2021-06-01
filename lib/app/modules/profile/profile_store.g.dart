// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ProfileStore = BindInject(
  (i) => ProfileStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileStore on _ProfileStoreBase, Store {
  final _$userAtom = Atom(name: '_ProfileStoreBase.user');

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

  final _$currentIndexSliderAtom =
      Atom(name: '_ProfileStoreBase.currentIndexSlider');

  @override
  int get currentIndexSlider {
    _$currentIndexSliderAtom.reportRead();
    return super.currentIndexSlider;
  }

  @override
  set currentIndexSlider(int value) {
    _$currentIndexSliderAtom.reportWrite(value, super.currentIndexSlider, () {
      super.currentIndexSlider = value;
    });
  }

  final _$valuesVisibleAtom = Atom(name: '_ProfileStoreBase.valuesVisible');

  @override
  bool get valuesVisible {
    _$valuesVisibleAtom.reportRead();
    return super.valuesVisible;
  }

  @override
  set valuesVisible(bool value) {
    _$valuesVisibleAtom.reportWrite(value, super.valuesVisible, () {
      super.valuesVisible = value;
    });
  }

  final _$_ProfileStoreBaseActionController =
      ActionController(name: '_ProfileStoreBase');

  @override
  void changedCard({required int index}) {
    final _$actionInfo = _$_ProfileStoreBaseActionController.startAction(
        name: '_ProfileStoreBase.changedCard');
    try {
      return super.changedCard(index: index);
    } finally {
      _$_ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void exchangeVisibility() {
    final _$actionInfo = _$_ProfileStoreBaseActionController.startAction(
        name: '_ProfileStoreBase.exchangeVisibility');
    try {
      return super.exchangeVisibility();
    } finally {
      _$_ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
currentIndexSlider: ${currentIndexSlider},
valuesVisible: ${valuesVisible}
    ''';
  }
}
