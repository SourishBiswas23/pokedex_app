part of 'pokemon_info_bloc.dart';

@immutable
abstract class PokemonInfoEvent {}

class LoadPokemon extends PokemonInfoEvent {
  LoadPokemon({required this.id});
  final String id;
}
