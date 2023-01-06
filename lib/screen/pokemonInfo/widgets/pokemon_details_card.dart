import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';
import 'about_text.dart';
import 'base_stats_text.dart';
import 'pokemon_description.dart';
import 'pokemon_height_and_weight.dart';
import 'pokemon_stat_label_count_and_bar.dart';
import 'pokemon_type.dart';

Align pokemonDetailsCard(
  Size screenSize,
  PokemonModel pokemon,
  Map<String, String> pokemonStats,
) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: const EdgeInsets.all(10),
      height: screenSize.height * 0.60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.1,
            ),
            pokemonType(pokemon),
            const SizedBox(height: 10),
            aboutText(pokemon),
            const SizedBox(height: 10),
            pokemonHeightAndWeight(pokemon),
            const SizedBox(height: 10),
            pokemonDescription(pokemon),
            const SizedBox(height: 10),
            baseStatsText(pokemon),
            const SizedBox(height: 10),
            pokemonStatLabelCountAndBar(pokemonStats, pokemon, screenSize),
          ],
        ),
      ),
    ),
  );
}
