import 'package:flutter/material.dart';

import '../../data/repository/pokemon_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(PokemonRepository().pokemonList[0].name);
    print(PokemonRepository().pokemonList[0].pokemonColor);

    return Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
