import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/text_styles.dart';

class PokemonNotFound extends StatelessWidget {
  const PokemonNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'No Such Pokemon!',
          style: TextStyles.pokemonNotFoundTextStyle,
        ),
      ),
    );
  }
}
