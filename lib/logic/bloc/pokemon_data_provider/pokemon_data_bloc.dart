import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pokemon_data_event.dart';
part 'pokemon_data_state.dart';

class PokemonDataBloc extends Bloc<PokemonDataEvent, PokemonDataState> {
  PokemonDataBloc() : super(PokemonDataInitial()) {
    on<PokemonDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
