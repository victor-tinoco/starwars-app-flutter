import 'package:dio/dio.dart';
import 'package:flutter_starwars/app/data/mapper/poke_request_mapper.dart';
import 'package:flutter_starwars/app/domain/model/response.dart' as Model;
import 'package:flutter_starwars/core/remote/http_code.dart';
import 'package:flutter_starwars/core/values/strings.dart';

import 'base/endpoints.dart' as Endpoints;

abstract class IWarriorService {
  Future<Model.Response> getAll();
}

class WarriorService implements IWarriorService {
  Future<Model.Response> getAll() async {
    Model.Response response = new Model.Response();
    Dio dio = new Dio();
    final ret = dio.get(Endpoints.warrior.list);

    await ret.then((res) {
      response.status = res.statusCode;
      response.data = PokemonRequestMapper.fromJson(res.data).results;
      response.message = res.statusMessage;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = INTERNAL_SERVER_ERROR_MESSAGE;
    });

    return response;
  }
}
