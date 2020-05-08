// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  Computed<bool> _$firstFormIsCompletedComputed;

  @override
  bool get firstFormIsCompleted => (_$firstFormIsCompletedComputed ??=
          Computed<bool>(() => super.firstFormIsCompleted))
      .value;
  Computed<bool> _$secondFormIsCompletedComputed;

  @override
  bool get secondFormIsCompleted => (_$secondFormIsCompletedComputed ??=
          Computed<bool>(() => super.secondFormIsCompleted))
      .value;
  Computed<bool> _$passwordsAreEqualComputed;

  @override
  bool get passwordsAreEqual => (_$passwordsAreEqualComputed ??=
          Computed<bool>(() => super.passwordsAreEqual))
      .value;
  Computed<bool> _$hasErrorOnSecondStepComputed;

  @override
  bool get hasErrorOnSecondStep => (_$hasErrorOnSecondStepComputed ??=
          Computed<bool>(() => super.hasErrorOnSecondStep))
      .value;
  Computed<String> _$errorMessageComputed;

  @override
  String get errorMessage =>
      (_$errorMessageComputed ??= Computed<String>(() => super.errorMessage))
          .value;

  final _$stepAtom = Atom(name: '_SignUpViewModelBase.step');

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

  final _$nameAtom = Atom(name: '_SignUpViewModelBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$birthAtom = Atom(name: '_SignUpViewModelBase.birth');

  @override
  String get birth {
    _$birthAtom.context.enforceReadPolicy(_$birthAtom);
    _$birthAtom.reportObserved();
    return super.birth;
  }

  @override
  set birth(String value) {
    _$birthAtom.context.conditionallyRunInAction(() {
      super.birth = value;
      _$birthAtom.reportChanged();
    }, _$birthAtom, name: '${_$birthAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_SignUpViewModelBase.email');

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

  final _$passwordAtom = Atom(name: '_SignUpViewModelBase.password');

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
      Atom(name: '_SignUpViewModelBase.confirmPassword');

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

  final _$emailAlredyExistsAtom =
      Atom(name: '_SignUpViewModelBase.emailAlredyExists');

  @override
  bool get emailAlredyExists {
    _$emailAlredyExistsAtom.context.enforceReadPolicy(_$emailAlredyExistsAtom);
    _$emailAlredyExistsAtom.reportObserved();
    return super.emailAlredyExists;
  }

  @override
  set emailAlredyExists(bool value) {
    _$emailAlredyExistsAtom.context.conditionallyRunInAction(() {
      super.emailAlredyExists = value;
      _$emailAlredyExistsAtom.reportChanged();
    }, _$emailAlredyExistsAtom, name: '${_$emailAlredyExistsAtom.name}_set');
  }

  final _$passwordTooSmallAtom =
      Atom(name: '_SignUpViewModelBase.passwordTooSmall');

  @override
  bool get passwordTooSmall {
    _$passwordTooSmallAtom.context.enforceReadPolicy(_$passwordTooSmallAtom);
    _$passwordTooSmallAtom.reportObserved();
    return super.passwordTooSmall;
  }

  @override
  set passwordTooSmall(bool value) {
    _$passwordTooSmallAtom.context.conditionallyRunInAction(() {
      super.passwordTooSmall = value;
      _$passwordTooSmallAtom.reportChanged();
    }, _$passwordTooSmallAtom, name: '${_$passwordTooSmallAtom.name}_set');
  }

  final _$errorOnSignUpAtom = Atom(name: '_SignUpViewModelBase.errorOnSignUp');

  @override
  bool get errorOnSignUp {
    _$errorOnSignUpAtom.context.enforceReadPolicy(_$errorOnSignUpAtom);
    _$errorOnSignUpAtom.reportObserved();
    return super.errorOnSignUp;
  }

  @override
  set errorOnSignUp(bool value) {
    _$errorOnSignUpAtom.context.conditionallyRunInAction(() {
      super.errorOnSignUp = value;
      _$errorOnSignUpAtom.reportChanged();
    }, _$errorOnSignUpAtom, name: '${_$errorOnSignUpAtom.name}_set');
  }

  final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase');

  @override
  dynamic setErrorOnSignUp(bool value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setErrorOnSignUp(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPasswordTooSmall(bool value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setPasswordTooSmall(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmailAlreadyExists(bool value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setEmailAlreadyExists(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStep(int value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setStep(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setName(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBirth(String value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setBirth(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfirmPassword(String value) {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction();
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'step: ${step.toString()},name: ${name.toString()},birth: ${birth.toString()},email: ${email.toString()},password: ${password.toString()},confirmPassword: ${confirmPassword.toString()},emailAlredyExists: ${emailAlredyExists.toString()},passwordTooSmall: ${passwordTooSmall.toString()},errorOnSignUp: ${errorOnSignUp.toString()},firstFormIsCompleted: ${firstFormIsCompleted.toString()},secondFormIsCompleted: ${secondFormIsCompleted.toString()},passwordsAreEqual: ${passwordsAreEqual.toString()},hasErrorOnSecondStep: ${hasErrorOnSecondStep.toString()},errorMessage: ${errorMessage.toString()}';
    return '{$string}';
  }
}
