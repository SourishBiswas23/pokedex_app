part of 'pokemon_data_bloc.dart';

@immutable
abstract class PokemonDataState {}

class PokemonData extends PokemonDataState {
  PokemonData({required this.pokemonList});
  final List<PokemonModel> pokemonList;
}

// class FinalPokemonList extends PokemonDataState {
//   FinalPokemonList({required this.pokemonList});
//   final List<FinalPokemonList> pokemonList;
// }
