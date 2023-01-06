import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';
import 'pokemon_stat_count_and_bar.dart';
import 'pokemon_stat_label.dart';

Padding pokemonStatLabelCountAndBar(
  Map<String, String> pokemonStats,
  PokemonModel pokemon,
  Size screenSize,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        pokemonStatLabel(pokemonStats, pokemon),
        Container(height: 100, color: Colors.grey, width: 1),
        pokemonStatCountAndBar(
          pokemonStats,
          screenSize,
          pokemon,
        )
      ],
    ),
  );
}
