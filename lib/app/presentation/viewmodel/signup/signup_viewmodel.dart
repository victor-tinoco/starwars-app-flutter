import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/app/domain/usecase/auth_usecase.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/remote/http_code.dart';
import 'package:flutter_starwars/core/values/strings.dart';
import 'package:mobx/mobx.dart';
part 'signup_viewmodel.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store {
  AuthUseCase _auth = serviceLocator<AuthUseCase>();

  @computed
  bool get firstFormIsCompleted =>
      name.isNotEmpty && birth.isNotEmpty && email.isNotEmpty ? true : false;

  @computed
  bool get secondFormIsCompleted =>
      password.isNotEmpty && confirmPassword.isNotEmpty ? true : false;

  @computed
  bool get passwordsAreEqual => confirmPassword.isEmpty
      ? null
      : password == confirmPassword ? true : false;

  @computed
  bool get hasErrorOnSecondStep =>
      passwordsAreEqual == false ||
      passwordTooSmall == true ||
      errorOnSignUp == true;

  @computed
  String get errorMessage => passwordTooSmall
      ? ERROR_PASSWORD_TOO_SMALL
      : passwordsAreEqual == false
          ? ERROR_PASSWORDS_MUST_BE_EQUAL
          : 'OCORREU UM ERRO AO CADASTRAR.';

  @observable
  int step = 1;

  @observable
  String name = '';

  @observable
  String birth = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @observable
  bool emailAlredyExists = false;

  @observable
  bool passwordTooSmall = false;

  @observable
  bool errorOnSignUp = false;

  @action
  setErrorOnSignUp(bool value) => errorOnSignUp = value;

  @action
  setPasswordTooSmall(bool value) => passwordTooSmall = value;

  @action
  setEmailAlreadyExists(bool value) => emailAlredyExists = value;

  @action
  setStep(int value) => step = value;

  @action
  setName(String value) => name = value;

  @action
  setBirth(String value) => birth = value;

  @action
  setEmail(String value) => email = value;

  @action
  setPassword(String value) => password = value;

  @action
  setConfirmPassword(String value) => confirmPassword = value;

  void nextStepButton() {
    if (_auth.emailIsValid(email)) {
      setEmailAlreadyExists(false);
      setStep(2);
    } else
      setEmailAlreadyExists(true);
  }

  void validatePassword(String pswd) {
    if (_auth.passwordIsValid(pswd))
      setPasswordTooSmall(false);
    else
      setPasswordTooSmall(true);

    setPasswordTooSmall(_auth.passwordIsValid(pswd) ? false : true);
  }

  Future<bool> signUp(Function() ifSuccess) async {
    Response response = await _auth.signUp(email, password);
    String uid;
    if (response.status == HttpCode.SUCCESS) {
      uid = response.data as String;
      ifSuccess();
      print('New user registered with UID: $uid');
      return true;
    }
    setErrorOnSignUp(true);
    Future.delayed(Duration(seconds: 3)).then((_) => setErrorOnSignUp(false));
    print(response);
    return false;
  }
}
