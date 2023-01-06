import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';

Positioned pokemonImage(Size screenSize, PokemonModel pokemon) {
  return Positioned(
    top: screenSize.height * 0.02,
    left: screenSize.width * 0.15,
    child: SizedBox(
      width: screenSize.width * 0.75,
      child: Hero(
        tag: pokemon.id,
        child: Image.network(
          pokemon.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
