import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/data/repository/pokemon_repository.dart';
import 'package:pokedex_app/logic/bloc/page_changer/page_changer_bloc.dart';

part 'pokemon_info_event.dart';
part 'pokemon_info_state.dart';

class PokemonInfoBloc extends Bloc<PokemonInfoEvent, PokemonInfoState> {
  PokemonInfoBloc({required PageChangerBloc pageChangerBloc})
      : _pageChangerBloc = pageChangerBloc,
        super(PokemonInfoInitial()) {
    on<LoadPokemonById>((event, emit) {
      _pageChangerBloc.add(LoadLoadingScreen());
      _pokemon = PokemonRepository().getPokemonById(event.id);
      _pageChangerBloc.add(LoadPokemonInfoScreen());
    });
    on<LoadPokemonByName>((event, emit) {
      _pageChangerBloc.add(LoadLoadingScreen());
      try {
        _pokemon = PokemonRepository().getPokemonByName(event.name);
        _pageChangerBloc.add(LoadPokemonInfoScreen());
      } on StateError catch (e) {
        _pageChangerBloc.add(LoadPokemonNotFoundScreen());
      }
    });
  }

  final PageChangerBloc _pageChangerBloc;
  late PokemonModel _pokemon;

  PokemonModel get pokemon => _pokemon;
}
