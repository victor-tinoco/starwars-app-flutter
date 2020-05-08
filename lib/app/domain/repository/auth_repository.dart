import 'package:flutter_starwars/app/domain/model/response.dart';

abstract class AuthRepository {
  Future<Response> login(String email, String password);

  Future<Response> signUp(String email, String password);

  Future<Response> getCurrentUser();

  Future<Response> resetPassword(String email);

  Future<Response> logout();
}
