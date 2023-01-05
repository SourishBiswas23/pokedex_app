import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';

part 'pokemon_data_event.dart';
part 'pokemon_data_state.dart';

class PokemonDataBloc extends Bloc<PokemonDataEvent, PokemonData> {
  PokemonDataBloc() : super(PokemonData(pokemonList: [])) {
    on<PokemonDataLoaded>((event, emit) {
      emit(PokemonData(pokemonList: event.pokemonList));
    });
  }
}
