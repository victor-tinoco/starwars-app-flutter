import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:flutter_starwars/core/utils/code_generator.dart';

class PokeMapper {
  static Poke fromJson(Map<String, dynamic> json) {
    final code = generateRandomWarriorCode();
    return Poke(
      name: json['name'],
      url: json['url'],
      code: code,
      faction: (code.contains('3') || (code.contains('5'))
          ? 'RESISTENCE'
          : 'EMPIRE'),
    );
  }

  static Map<String, dynamic> toJson(Poke poke) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = poke.name;
    data['url'] = poke.url;
    return data;
  }

  static List<Poke> fromJsonList(List<dynamic> json) =>
      json.map((i) => fromJson(i)).toList();
}
