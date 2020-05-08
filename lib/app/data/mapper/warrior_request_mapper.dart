import 'package:flutter_starwars/app/data/mapper/warrior_mapper.dart';
import 'package:flutter_starwars/app/domain/model/warrior_request.dart';

class WarriorRequestMapper {
  static WarriorRequest fromJson(Map<String, dynamic> json) {
    return WarriorRequest(results: WarriorMapper.fromJsonList(json['results']));
  }
}
