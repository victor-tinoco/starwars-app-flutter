import 'package:flutter_starwars/app/domain/model/response.dart';
import 'package:flutter_starwars/app/domain/repository/warrior_repository.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';

class WarriorUseCase {
  final WarriorRepository _repos = serviceLocator<WarriorRepository>();

  Future<Response> warriors() async {
    return await _repos.warriors();
  }
}
