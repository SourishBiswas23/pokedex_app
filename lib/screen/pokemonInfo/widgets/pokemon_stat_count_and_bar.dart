import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';
import 'pokemon_stat_bar.dart';
import 'pokemon_stat_count.dart';

Column pokemonStatCountAndBar(
    Map<String, String> pokemonStats, Size screenSize, PokemonModel pokemon) {
  return Column(
    children: pokemonStats.entries
        .map(
          (entry) => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              pokemonStatCount(entry),
              pokemonStatBar(screenSize, pokemon, entry),
            ],
          ),
        )
        .toList(),
  );
}
