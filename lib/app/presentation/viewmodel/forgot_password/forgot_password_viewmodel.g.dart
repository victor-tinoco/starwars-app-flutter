// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgotPasswordViewModel on _ForgotPasswordViewModelBase, Store {
  Computed<bool> _$passwordsAreEqualComputed;

  @override
  bool get passwordsAreEqual => (_$passwordsAreEqualComputed ??=
          Computed<bool>(() => super.passwordsAreEqual))
      .value;

  final _$stepAtom = Atom(name: '_ForgotPasswordViewModelBase.step');

  @override
  int get step {
    _$stepAtom.context.enforceReadPolicy(_$stepAtom);
    _$stepAtom.reportObserved();
    return super.step;
  }

  @override
  set step(int value) {
    _$stepAtom.context.conditionallyRunInAction(() {
      super.step = value;
      _$stepAtom.reportChanged();
    }, _$stepAtom, name: '${_$stepAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_ForgotPasswordViewModelBase.email');

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

  final _$resetCodeAtom = Atom(name: '_ForgotPasswordViewModelBase.resetCode');

  @override
  String get resetCode {
    _$resetCodeAtom.context.enforceReadPolicy(_$resetCodeAtom);
    _$resetCodeAtom.reportObserved();
    return super.resetCode;
  }

  @override
  set resetCode(String value) {
    _$resetCodeAtom.context.conditionallyRunInAction(() {
      super.resetCode = value;
      _$resetCodeAtom.reportChanged();
    }, _$resetCodeAtom, name: '${_$resetCodeAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_ForgotPasswordViewModelBase.password');

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

  final _$confirmPasswordAtom =
      Atom(name: '_ForgotPasswordViewModelBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.context.enforceReadPolicy(_$confirmPasswordAtom);
    _$confirmPasswordAtom.reportObserved();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.context.conditionallyRunInAction(() {
      super.confirmPassword = value;
      _$confirmPasswordAtom.reportChanged();
    }, _$confirmPasswordAtom, name: '${_$confirmPasswordAtom.name}_set');
  }

  final _$_ForgotPasswordViewModelBaseActionController =
      ActionController(name: '_ForgotPasswordViewModelBase');

  @override
  dynamic setStep(int value) {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction();
    try {
      return super.setStep(value);
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setResetCode(String value) {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction();
    try {
      return super.setResetCode(value);
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfirmPassword(String value) {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction();
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'step: ${step.toString()},email: ${email.toString()},resetCode: ${resetCode.toString()},password: ${password.toString()},confirmPassword: ${confirmPassword.toString()},passwordsAreEqual: ${passwordsAreEqual.toString()}';
    return '{$string}';
  }
}
