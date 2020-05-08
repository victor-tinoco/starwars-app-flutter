import 'package:flutter_starwars/app/domain/model/poke.dart';

class PokemonRequest {
  final String next;
  final List<Poke> results;

  PokemonRequest({
    this.next,
    this.results,
  });
}
