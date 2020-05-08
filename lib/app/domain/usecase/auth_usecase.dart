import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/app/domain/repository/auth_repository.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';

class AuthUseCase {
  AuthRepository _repos = serviceLocator<AuthRepository>();

  Future<Response> getCurrentUser() async {
    return await _repos.getCurrentUser();
  }

  Future<Response> login(String email, String password) async {
    return await _repos.login(email, password);
  }

  Future<Response> logout() async {
    return await _repos.logout();
  }

  Future<Response> resetPassword(String email) async {
    return await _repos.resetPassword(email);
  }

  Future<Response> signUp(String email, String password) async {
    return await _repos.signUp(email, password);
  }

  bool emailIsValid(String email) {
    if (email.length > 0)
      return email.contains("@") && email.contains(".") && email.length > 0
          ? true
          : false;
    else
      return true;
  }

  bool passwordIsValid(String pswd) {
    if (pswd.length > 0)
      return pswd.length >= 6 ? true : false;
    else
      return true;
  }
}
