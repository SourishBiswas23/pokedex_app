import 'package:flutter/material.dart';

import '../../../constants/pokemon_colors.dart';
import '../../../data/models/pokemon_model.dart';

Text baseStatsText(PokemonModel pokemon) {
  return Text(
    'Base Stats',
    style: TextStyle(
      color: PokemonColors.pokemonColors[pokemon.typeOfPokemon[0]],
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
}
