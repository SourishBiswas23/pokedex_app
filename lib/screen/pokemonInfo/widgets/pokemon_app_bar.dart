import 'package:flutter/material.dart';

import '../../../data/models/pokemon_model.dart';

AppBar pokemonAppBar(PokemonModel pokemon) {
  return AppBar(
    backgroundColor: Colors.transparent,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Text(
            pokemon.id,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    ],
    title: Text(
      pokemon.name,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
