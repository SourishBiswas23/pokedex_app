import 'package:pokedex_app/data/models/pokemon_model.dart';

class PokemonStats {
  static Map<String, String> pokemonStats(PokemonModel pokemon) {
    Map<String, String> result = {
      'HP': pokemon.hp,
      'ATK': pokemon.attack,
      'DEF': pokemon.defense,
      'SATK': pokemon.specialAttack,
      'SDEF': pokemon.specialDefense,
      'SPD': pokemon.speed,
      // 'TOTAL': pokemon.total,
    };
    return result;
  }
}
