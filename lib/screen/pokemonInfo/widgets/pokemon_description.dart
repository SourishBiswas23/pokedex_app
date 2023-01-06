import 'package:flutter/material.dart';

import '../../../constants/text_styles.dart';
import '../../../data/models/pokemon_model.dart';

Padding pokemonDescription(PokemonModel pokemon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      pokemon.description,
      style: TextStyles.paragraphTextStyle,
    ),
  );
}
