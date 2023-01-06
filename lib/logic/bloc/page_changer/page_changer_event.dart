part of 'page_changer_bloc.dart';

@immutable
abstract class PageChangerEvent {}

class SplashScreenLoaded extends PageChangerEvent {}

class AppInitialized extends PageChangerEvent {}

class LoadPokemonDetail extends PageChangerEvent {
  LoadPokemonDetail({required this.pokemonId});
  final String pokemonId;
}

class LoadLoadingScreen extends PageChangerEvent {}

class LoadPokemonInfoScreen extends PageChangerEvent {}

class LoadPokemonNotFoundScreen extends PageChangerEvent {}
