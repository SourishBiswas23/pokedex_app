import 'package:flutter/material.dart';
import 'package:pokedex_app/screen/home/widgets/app_bar_widget.dart';

import 'widgets/pokemon_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: 20,
            itemBuilder: (context, index) {
              return pokemonTile(index);
            },
          ),
        ),
      ),
    );
  }
}
