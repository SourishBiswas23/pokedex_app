import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/logic/bloc/pokemon_info/pokemon_info_bloc.dart';

import '../../data/models/pokemon_model.dart';
import 'utils/pokemon_stats.dart';
import 'widgets/pokeball_image.dart';
import 'widgets/pokemon_app_bar.dart';
import 'widgets/pokemon_details_card.dart';
import 'widgets/pokemon_image.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final PokemonModel pokemon =
        BlocProvider.of<PokemonInfoBloc>(context).pokemon;
    final Size screenSize = MediaQuery.of(context).size;
    final Map<String, String> pokemonStats = PokemonStats.pokemonStats(pokemon);

    return Scaffold(
      backgroundColor: pokemon.pokemonColor,
      appBar: pokemonAppBar(pokemon),
      body: Stack(
        children: [
          pokeballImage(screenSize),
          pokemonDetailsCard(screenSize, pokemon, pokemonStats),
          pokemonImage(screenSize, pokemon),
        ],
      ),
    );
  }
}
