import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/core/remote/http_code.dart';
import 'package:flutter_starwars/core/values/strings.dart';

abstract class IAuthService {
  Future<Response> login(String email, String password);

  Future<Response> signUp(String email, String password);

  Future<Response> getCurrentUser();

  Future<Response> resetPassword(String email);

  Future<Response> logout();
}

class AuthService implements IAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Response> getCurrentUser() async {
    Response response = new Response();
    final ret = _auth.currentUser();

    await ret.then((res) {
      response.status = HttpCode.SUCCESS;
      response.data = res;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = INTERNAL_SERVER_ERROR_MESSAGE;
    });

    return response;
  }

  @override
  Future<Response> login(String email, String password) async {
    Response response = new Response();
    final ret =
        _auth.signInWithEmailAndPassword(email: email, password: password);

    await ret.then((res) {
      response.status = HttpCode.SUCCESS;
      response.data = res.user.uid;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = e.code;
    });

    return response;
  }

  @override
  Future<Response> logout() async {
    Response response = new Response();
    final ret = _auth.signOut();

    await ret.then((res) {
      response.status = HttpCode.SUCCESS;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = INTERNAL_SERVER_ERROR_MESSAGE;
    });

    return response;
  }

  @override
  Future<Response> signUp(String email, String password) async {
    Response response = new Response();
    final ret =
        _auth.createUserWithEmailAndPassword(email: email, password: password);

    await ret.then((res) {
      response.status = HttpCode.SUCCESS;
      response.data = res.user.uid;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = INTERNAL_SERVER_ERROR_MESSAGE;
    });

    return response;
  }

  @override
  Future<Response> resetPassword(String email) async {
    Response response = new Response();
    final ret = _auth.sendPasswordResetEmail(email: email);

    await ret.then((res) {
      response.status = HttpCode.SUCCESS;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = INTERNAL_SERVER_ERROR_MESSAGE;
    });

    return response;
  }
}
