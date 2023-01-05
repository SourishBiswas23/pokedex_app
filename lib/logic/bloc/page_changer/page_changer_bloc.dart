import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex_app/data/repository/pokemon_repository.dart';
import 'package:pokedex_app/logic/bloc/pokemon_data_provider/pokemon_data_bloc.dart';
import 'package:pokedex_app/routes.dart';

part 'page_changer_event.dart';
part 'page_changer_state.dart';

class PageChangerBloc extends Bloc<PageChangerEvent, PageChangerState> {
  PageChangerBloc({required PokemonDataBloc pokemonDataBloc})
      : _pokemonDataBloc = pokemonDataBloc,
        super(SplashScreenState(isLoaded: false)) {
    on<SplashScreenLoaded>(
      (event, emit) async {
        isSplashScreenLoaded = true;
        if (isAppInitialized) {
          _pokemonDataBloc.add(
              PokemonDataLoaded(pokemonList: PokemonRepository().pokemonList));
          await AppNavigator.pushReplace(route: Routes.home);
        }
      },
    );
    on<AppInitialized>((event, emit) async {
      isAppInitialized = true;
      if (isSplashScreenLoaded) {
        _pokemonDataBloc.add(
            PokemonDataLoaded(pokemonList: PokemonRepository().pokemonList));
        await AppNavigator.pushReplace(route: Routes.home);
      }
    });
  }
  final PokemonDataBloc _pokemonDataBloc;
  bool isSplashScreenLoaded = false;
  bool isAppInitialized = false;
}
