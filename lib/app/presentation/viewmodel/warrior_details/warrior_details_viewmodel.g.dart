// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warrior_details_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WarriorDetailsViewModel on _WarriorDetailsViewModelBase, Store {
  final _$warriorAtom = Atom(name: '_WarriorDetailsViewModelBase.warrior');

  @override
  Poke get warrior {
    _$warriorAtom.context.enforceReadPolicy(_$warriorAtom);
    _$warriorAtom.reportObserved();
    return super.warrior;
  }

  @override
  set warrior(Poke value) {
    _$warriorAtom.context.conditionallyRunInAction(() {
      super.warrior = value;
      _$warriorAtom.reportChanged();
    }, _$warriorAtom, name: '${_$warriorAtom.name}_set');
  }

  final _$_WarriorDetailsViewModelBaseActionController =
      ActionController(name: '_WarriorDetailsViewModelBase');

  @override
  dynamic setWarrior(Poke value) {
    final _$actionInfo =
        _$_WarriorDetailsViewModelBaseActionController.startAction();
    try {
      return super.setWarrior(value);
    } finally {
      _$_WarriorDetailsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'warrior: ${warrior.toString()}';
    return '{$string}';
  }
}
