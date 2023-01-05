import 'package:flutter/widgets.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/constants/text_styles.dart';
import 'package:pokedex_app/data/repository/pokemon_repository.dart';

Container pokemonTile(int index) {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: AppColors.pokemonCardColor,
      border: Border.all(
        width: 2,
        color: PokemonRepository().pokemonList[index].pokemonColor,
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
                  PokemonRepository().pokemonList[index].id,
                  style: TextStyle(
                    color: PokemonRepository().pokemonList[index].pokemonColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Image.network(
          PokemonRepository().pokemonList[index].imageUrl,
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
              color: PokemonRepository().pokemonList[index].pokemonColor,
            ),
            child: Center(
              child: Text(
                PokemonRepository().pokemonList[index].name,
                style: TextStyles.pokemonTileTextStyle,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
