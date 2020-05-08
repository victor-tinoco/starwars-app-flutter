import 'package:flutter_starwars/app/data/source/remote/auth_service.dart';
import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/app/domain/repository/auth_repository.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';

class AuthRepositoryImpl implements AuthRepository {
  IAuthService _service = serviceLocator<IAuthService>();

  @override
  Future<Response> getCurrentUser() async {
    return await _service.getCurrentUser();
  }

  @override
  Future<Response> login(String email, String password) async {
    return await _service.login(email, password);
  }

  @override
  Future<Response> logout() async {
    return await _service.logout();
  }

  @override
  Future<Response> resetPassword(String email) async {
    return await _service.resetPassword(email);
  }

  @override
  Future<Response> signUp(String email, String password) async {
    return await _service.signUp(email, password);
  }
}
