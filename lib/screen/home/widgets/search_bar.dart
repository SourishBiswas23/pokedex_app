import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/logic/bloc/pokemon_info/pokemon_info_bloc.dart';

import '../../../constants/border_styles.dart';

PreferredSize searchBar({
  required TextEditingController searchQuery,
  required BuildContext context,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(40),
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      height: 30,
      width: double.infinity,
      child: TextField(
        controller: searchQuery,
        cursorColor: AppColors.searchFieldCursorColor,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: AppColors.searchFieldFillColor,
          labelText: 'Search',
          enabledBorder: BorderStyles.searchFieldEnabledBorder,
          focusedBorder: BorderStyles.searchFieldFocusedBorder,
          suffixIcon: GestureDetector(
            child: const Icon(
              Icons.search,
              color: AppColors.searchFieldIconColor,
            ),
            onTap: () {
              BlocProvider.of<PokemonInfoBloc>(context).add(
                LoadPokemonByName(name: searchQuery.text),
              );
            },
          ),
        ),
        onSubmitted: (_) => BlocProvider.of<PokemonInfoBloc>(context).add(
          LoadPokemonByName(name: searchQuery.text),
        ),
      ),
    ),
  );
}
