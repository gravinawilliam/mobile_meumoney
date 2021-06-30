// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_cards_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SlideCardsStore = BindInject(
  (i) => SlideCardsStore(i<HomeStore>()),
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

  final _$changedCardAsyncAction =
      AsyncAction('_SlideCardsStoreBase.changedCard');

  @override
  Future<void> changedCard({required int index}) {
    return _$changedCardAsyncAction.run(() => super.changedCard(index: index));
  }

  @override
  String toString() {
    return '''
currentIndexSlider: ${currentIndexSlider}
    ''';
  }
}
