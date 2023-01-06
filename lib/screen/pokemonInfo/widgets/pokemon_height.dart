import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/text_styles.dart';
import '../../../data/models/pokemon_model.dart';

Column pokemonHeight(PokemonModel pokemon) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          const FaIcon(FontAwesomeIcons.weightScale),
          const SizedBox(width: 10),
          Text(
            pokemon.weight,
            style: TextStyles.paragraphTextStyle,
          ),
        ],
      ),
      const SizedBox(height: 10),
      const Text(
        'Weight',
        style: TextStyles.subheadingTextStyle,
      ),
    ],
  );
}
