import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/constants/text_styles.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/logic/bloc/pokemon_info/pokemon_info_bloc.dart';

Widget pokemonTile(PokemonModel pokemon, BuildContext context) {
  final PokemonInfoBloc pokemonInfoBloc =
      BlocProvider.of<PokemonInfoBloc>(context);

  return GestureDetector(
    onTap: () => pokemonInfoBloc.add(
      LoadPokemonById(id: pokemon.id),
    ),
    child: Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.pokemonTileColor,
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
          Hero(
            tag: pokemon.id,
            child: Image.network(
              pokemon.imageUrl,
              fit: BoxFit.cover,
            ),
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
    ),
  );
}
