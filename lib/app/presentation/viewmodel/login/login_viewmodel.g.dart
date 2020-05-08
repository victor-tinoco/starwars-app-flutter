// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  Computed<double> _$boxErrorComputed;

  @override
  double get boxError =>
      (_$boxErrorComputed ??= Computed<double>(() => super.boxError)).value;

  final _$emailAtom = Atom(name: '_LoginViewModelBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginViewModelBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_LoginViewModelBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$hasErrorOnEmailAtom =
      Atom(name: '_LoginViewModelBase.hasErrorOnEmail');

  @override
  bool get hasErrorOnEmail {
    _$hasErrorOnEmailAtom.context.enforceReadPolicy(_$hasErrorOnEmailAtom);
    _$hasErrorOnEmailAtom.reportObserved();
    return super.hasErrorOnEmail;
  }

  @override
  set hasErrorOnEmail(bool value) {
    _$hasErrorOnEmailAtom.context.conditionallyRunInAction(() {
      super.hasErrorOnEmail = value;
      _$hasErrorOnEmailAtom.reportChanged();
    }, _$hasErrorOnEmailAtom, name: '${_$hasErrorOnEmailAtom.name}_set');
  }

  final _$hasErrorOnPasswordAtom =
      Atom(name: '_LoginViewModelBase.hasErrorOnPassword');

  @override
  bool get hasErrorOnPassword {
    _$hasErrorOnPasswordAtom.context
        .enforceReadPolicy(_$hasErrorOnPasswordAtom);
    _$hasErrorOnPasswordAtom.reportObserved();
    return super.hasErrorOnPassword;
  }

  @override
  set hasErrorOnPassword(bool value) {
    _$hasErrorOnPasswordAtom.context.conditionallyRunInAction(() {
      super.hasErrorOnPassword = value;
      _$hasErrorOnPasswordAtom.reportChanged();
    }, _$hasErrorOnPasswordAtom, name: '${_$hasErrorOnPasswordAtom.name}_set');
  }

  final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase');

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErrorMessage(String value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction();
    try {
      return super.setErrorMessage(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setHasErrorOnEmail(bool value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction();
    try {
      return super.setHasErrorOnEmail(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setHasErrorOnPassword(bool value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction();
    try {
      return super.setHasErrorOnPassword(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},password: ${password.toString()},errorMessage: ${errorMessage.toString()},hasErrorOnEmail: ${hasErrorOnEmail.toString()},hasErrorOnPassword: ${hasErrorOnPassword.toString()},boxError: ${boxError.toString()}';
    return '{$string}';
  }
}
