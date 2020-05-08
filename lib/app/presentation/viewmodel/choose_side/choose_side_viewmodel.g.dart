// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_side_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChooseSideViewModel on _ChooseSideViewModelBase, Store {
  final _$selectedSideAtom =
      Atom(name: '_ChooseSideViewModelBase.selectedSide');

  @override
  SideForce get selectedSide {
    _$selectedSideAtom.context.enforceReadPolicy(_$selectedSideAtom);
    _$selectedSideAtom.reportObserved();
    return super.selectedSide;
  }

  @override
  set selectedSide(SideForce value) {
    _$selectedSideAtom.context.conditionallyRunInAction(() {
      super.selectedSide = value;
      _$selectedSideAtom.reportChanged();
    }, _$selectedSideAtom, name: '${_$selectedSideAtom.name}_set');
  }

  final _$_ChooseSideViewModelBaseActionController =
      ActionController(name: '_ChooseSideViewModelBase');

  @override
  dynamic setSelectedSide(SideForce value) {
    final _$actionInfo =
        _$_ChooseSideViewModelBaseActionController.startAction();
    try {
      return super.setSelectedSide(value);
    } finally {
      _$_ChooseSideViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'selectedSide: ${selectedSide.toString()}';
    return '{$string}';
  }
}
