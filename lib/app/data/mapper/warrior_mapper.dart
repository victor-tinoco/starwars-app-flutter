import 'package:flutter_starwars/app/domain/model/warrior.dart';
import 'package:flutter_starwars/core/utils/code_generator.dart';

class WarriorMapper {
  static Warrior fromJson(Map<String, dynamic> json) {
    return Warrior(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      code: generateRandomWarriorCode(),
      hairColor: json['hair_color'],
      skinColor: json['skin_color'],
      eyeColor: json['eye_color'],
      birthYear: json['birth_year'],
      gender: json['gender'],
      faction: json['faction'],
      homeworld: json['homeworld'],
      films: json['films'].cast<String>(),
      species: json['species'].cast<String>(),
      vehicles: json['vehicles'].cast<String>(),
      starships: json['starships'].cast<String>(),
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  static List<Warrior> fromJsonList(List<dynamic> json) =>
      json.map((e) => fromJson(e)).toList();

  Map<String, dynamic> toJson(Warrior warrior) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = warrior.name;
    data['height'] = warrior.height;
    data['mass'] = warrior.mass;
    data['hair_color'] = warrior.hairColor;
    data['skin_color'] = warrior.skinColor;
    data['eye_color'] = warrior.eyeColor;
    data['birth_year'] = warrior.birthYear;
    data['gender'] = warrior.gender;
    data['faction'] = warrior.faction;
    data['homeworld'] = warrior.homeworld;
    data['films'] = warrior.films;
    data['species'] = warrior.species;
    data['vehicles'] = warrior.vehicles;
    data['starships'] = warrior.starships;
    data['created'] = warrior.created;
    data['edited'] = warrior.edited;
    data['url'] = warrior.url;
    return data;
  }
}
