import 'package:flutter_starwars/app/domain/model/response.dart';

abstract class WarriorRepository {
  Future<Response> warriors();
}
