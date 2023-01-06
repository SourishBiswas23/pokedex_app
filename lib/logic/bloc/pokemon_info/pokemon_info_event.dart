part of 'pokemon_info_bloc.dart';

@immutable
abstract class PokemonInfoEvent {}

class LoadPokemonById extends PokemonInfoEvent {
  LoadPokemonById({required this.id});
  final String id;
}

class LoadPokemonByName extends PokemonInfoEvent {
  LoadPokemonByName({required this.name});
  final String name;
}
