import 'package:flutter/material.dart';

import '../../../constants/pokemon_colors.dart';
import '../../../constants/text_styles.dart';
import '../../../data/models/pokemon_model.dart';

Wrap pokemonType(PokemonModel pokemon) {
  return Wrap(
    children: pokemon.typeOfPokemon
        .map(
          (e) => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: PokemonColors.pokemonColors[e],
            ),
            child: Text(
              e,
              style: TextStyles.pokemonTypeTextStyle,
            ),
          ),
        )
        .toList(),
  );
}
