import 'package:flutter_starwars/app/domain/usecase/auth_usecase.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/remote/http_code.dart';
import 'package:flutter_starwars/core/values/strings.dart';
import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  AuthUseCase _auth = serviceLocator<AuthUseCase>();

  @computed
  double get boxError =>
      (this.hasErrorOnEmail || this.hasErrorOnPassword) ? 1 : 0;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String errorMessage = '';

  @observable
  bool hasErrorOnEmail = false;

  @observable
  bool hasErrorOnPassword = false;

  @action
  setEmail(String value) => email = value;

  @action
  setPassword(String value) => password = value;

  @action
  setErrorMessage(String value) => errorMessage = value;

  @action
  setHasErrorOnEmail(bool value) => hasErrorOnEmail = value;

  @action
  setHasErrorOnPassword(bool value) => hasErrorOnPassword = value;

  void validateEmail(String email) {
    if (_auth.emailIsValid(email))
      setHasErrorOnEmail(false);
    else {
      setHasErrorOnEmail(true);
      setErrorMessage(ERROR_TAP_VALID_EMAIL);
    }
  }

  void validatePassword(String password) {
    if (_auth.passwordIsValid(password))
      setHasErrorOnPassword(false);
    else {
      setHasErrorOnPassword(true);
      setErrorMessage(ERROR_PASSWORD_TOO_SMALL);
    }
  }

  Future<bool> login() async {
    final response = await _auth.login(email, password);

    if (response.status == HttpCode.SUCCESS) return true;

    switch (response.message) {
      case 'ERROR_USER_NOT_FOUND':
        setHasErrorOnEmail(true);
        setErrorMessage(ERROR_EMAIL_NOT_FOUND);
        break;
      case 'ERROR_WRONG_PASSWORD':
        setHasErrorOnPassword(true);
        setErrorMessage(ERROR_INCORRECT_PASSWORD);
        break;
      default:
    }

    return false;
  }
}
