import 'package:flutter_starwars/app/data/mapper/poke_mapper.dart';
import 'package:flutter_starwars/app/domain/model/poke_request.dart';

class PokemonRequestMapper {
  static PokemonRequest fromJson(Map<String, dynamic> json) {
    return PokemonRequest(
        next: json["next"] as String,
        results: PokeMapper.fromJsonList(json["results"]));
  }
}
