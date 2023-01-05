import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/logic/bloc/pokemon_data_provider/pokemon_data_bloc.dart';
import 'package:pokedex_app/screen/home/widgets/app_bar_widget.dart';

import 'widgets/pokemon_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PokemonModel> pokemonList =
        BlocProvider.of<PokemonDataBloc>(context).state.pokemonList;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            appBarWidget(),
          ],
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemCount: pokemonList.length,
            itemBuilder: (context, index) {
              return pokemonTile(pokemonList[index]);
            },
          ),
        ),
      ),
    );
  }
}
