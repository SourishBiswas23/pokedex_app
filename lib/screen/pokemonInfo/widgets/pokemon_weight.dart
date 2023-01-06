import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/text_styles.dart';
import '../../../data/models/pokemon_model.dart';

Column pokemonWeight(PokemonModel pokemon) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          const FaIcon(FontAwesomeIcons.rulerVertical),
          const SizedBox(width: 10),
          Text(
            pokemon.height,
            style: TextStyles.paragraphTextStyle,
          ),
        ],
      ),
      const SizedBox(height: 10),
      const Text(
        'Height',
        style: TextStyles.subheadingTextStyle,
      ),
    ],
  );
}
