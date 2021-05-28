// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_cards_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SlideCardsStore = BindInject(
  (i) => SlideCardsStore(),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SlideCardsStore on _SlideCardsStoreBase, Store {
  final _$currentIndexSliderAtom =
      Atom(name: '_SlideCardsStoreBase.currentIndexSlider');

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

  final _$_SlideCardsStoreBaseActionController =
      ActionController(name: '_SlideCardsStoreBase');

  @override
  void changedCard({required int index}) {
    final _$actionInfo = _$_SlideCardsStoreBaseActionController.startAction(
        name: '_SlideCardsStoreBase.changedCard');
    try {
      return super.changedCard(index: index);
    } finally {
      _$_SlideCardsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndexSlider: ${currentIndexSlider}
    ''';
  }
}
