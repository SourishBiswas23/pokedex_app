part of 'pokemon_data_bloc.dart';

@immutable
abstract class PokemonDataEvent {}

class PokemonDataLoaded extends PokemonDataEvent {
  PokemonDataLoaded({required this.pokemonList});
  final List<PokemonModel> pokemonList;
}
