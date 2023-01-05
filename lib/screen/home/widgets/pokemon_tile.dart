import 'package:flutter/widgets.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/constants/text_styles.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';

Container pokemonTile(PokemonModel pokemon) {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: AppColors.pokemonCardColor,
      border: Border.all(
        width: 2,
        color: pokemon.pokemonColor,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Text(
                  pokemon.id,
                  style: TextStyle(
                    color: pokemon.pokemonColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Image.network(
          pokemon.imageUrl,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: pokemon.pokemonColor,
            ),
            child: Center(
              child: Text(
                pokemon.name,
                style: TextStyles.pokemonTileTextStyle,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
