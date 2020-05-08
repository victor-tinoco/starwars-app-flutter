// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_list_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StarWarsListViewModel on _StarWarsListViewModelBase, Store {
  final _$listAtom = Atom(name: '_StarWarsListViewModelBase.list');

  @override
  List<Poke> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(List<Poke> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$_StarWarsListViewModelBaseActionController =
      ActionController(name: '_StarWarsListViewModelBase');

  @override
  dynamic setList(List<Poke> value) {
    final _$actionInfo =
        _$_StarWarsListViewModelBaseActionController.startAction();
    try {
      return super.setList(value);
    } finally {
      _$_StarWarsListViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'list: ${list.toString()}';
    return '{$string}';
  }
}
