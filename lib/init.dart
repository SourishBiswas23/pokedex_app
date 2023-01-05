import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/data/provider/pokemon_data.dart';
import 'package:pokedex_app/data/repository/pokemon_repository.dart';
import 'package:pokedex_app/logic/bloc/page_changer_bloc.dart';

class Init {
  static Future initialize(BuildContext context) async {
    await _initializePokemonData();
    await _intializePokemonRepository();
    BlocProvider.of<PageChangerBloc>(context).add(AppInitialized());
  }

  static _initializePokemonData() async {
    final PokemonData pokemonData = PokemonData();
    await pokemonData.initializePokemonData();
  }

  static _intializePokemonRepository() {
    PokemonRepository();
  }
}
