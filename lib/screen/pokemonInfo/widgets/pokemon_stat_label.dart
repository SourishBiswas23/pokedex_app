import 'package:flutter/material.dart';

import '../../../constants/pokemon_colors.dart';
import '../../../data/models/pokemon_model.dart';

Column pokemonStatLabel(
  Map<String, String> pokemonStats,
  PokemonModel pokemon,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: pokemonStats.entries.map((entry) {
      return Text(
        entry.key,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: PokemonColors.pokemonColors[pokemon.typeOfPokemon[0]],
        ),
      );
    }).toList(),
  );
}
