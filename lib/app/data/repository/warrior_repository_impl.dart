import 'package:flutter_starwars/app/data/source/remote/warrior_service.dart';
import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/app/domain/repository/warrior_repository.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';

class WarriorRepositoryImpl implements WarriorRepository {
  IWarriorService _service = serviceLocator<IWarriorService>();

  @override
  Future<Response> warriors() async {
    return await _service.getAll();
  }
}
