import 'package:flutter_starwars/app/domain/usecase/auth_usecase.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:mobx/mobx.dart';
part 'forgot_password_viewmodel.g.dart';

class ForgotPasswordViewModel = _ForgotPasswordViewModelBase
    with _$ForgotPasswordViewModel;

abstract class _ForgotPasswordViewModelBase with Store {
  final AuthUseCase _usecase = serviceLocator<AuthUseCase>();

  @computed
  bool get passwordsAreEqual => confirmPassword.isEmpty
      ? null
      : password == confirmPassword ? true : false;

  @observable
  int step = 1;

  @observable
  String email = '';

  @observable
  String resetCode = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @action
  setStep(int value) => step = value;

  @action
  setEmail(String value) => email = value;

  @action
  setResetCode(String value) => resetCode = value;

  @action
  setPassword(String value) => password = value;

  @action
  setConfirmPassword(String value) => confirmPassword = value;

  next() {
    switch (step) {
      case 1:
        _usecase.resetPassword(email);
        break;
      default:
        break;
    }
    setStep(step + 1);
  }

  String maskEmail(String string) {
    String email = '';
    bool passedAtSign = false;

    for (var i = 0; i < string.length; i++) {
      if (i < 3)
        email += string[i];
      else {
        if (string[i] == '@') {
          passedAtSign = true;
        }
        if (passedAtSign) {
          email += string[i];
        } else {
          email += "*";
        }
      }
    }

    return email;
  }
}
