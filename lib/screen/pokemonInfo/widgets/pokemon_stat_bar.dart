import 'package:flutter/material.dart';

import '../../../constants/pokemon_colors.dart';
import '../../../data/models/pokemon_model.dart';

Stack pokemonStatBar(
    Size screenSize, PokemonModel pokemon, MapEntry<String, String> entry) {
  return Stack(
    children: [
      Container(
        width: screenSize.width / 2,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
          color: PokemonColors.pokemonColors[pokemon.typeOfPokemon[0]]
              ?.withOpacity(0.5),
        ),
      ),
      Container(
        width: (screenSize.width / 2) * double.parse(entry.value) / 200,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
          color: PokemonColors.pokemonColors[pokemon.typeOfPokemon[0]],
        ),
      ),
    ],
  );
}
