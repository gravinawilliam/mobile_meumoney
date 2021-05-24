// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RootStore on _RootStoreBase, Store {
  final _$selectedIndexAtom = Atom(name: '_RootStoreBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_RootStoreBaseActionController =
      ActionController(name: '_RootStoreBase');

  @override
  void changePage(int index) {
    final _$actionInfo = _$_RootStoreBaseActionController.startAction(
        name: '_RootStoreBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_RootStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showBottomBarOption() {
    final _$actionInfo = _$_RootStoreBaseActionController.startAction(
        name: '_RootStoreBase.showBottomBarOption');
    try {
      return super.showBottomBarOption();
    } finally {
      _$_RootStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
