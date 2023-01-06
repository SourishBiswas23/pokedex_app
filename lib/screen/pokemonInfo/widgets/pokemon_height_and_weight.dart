import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';
import 'pokemon_height.dart';
import 'pokemon_weight.dart';

Row pokemonHeightAndWeight(PokemonModel pokemon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      pokemonHeight(pokemon),
      Container(
        height: 40,
        width: 1,
        color: Colors.grey,
      ),
      pokemonWeight(pokemon),
    ],
  );
}
