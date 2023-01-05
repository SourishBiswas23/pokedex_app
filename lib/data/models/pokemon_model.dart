import 'package:flutter/animation.dart';

class PokemonModel {
  PokemonModel({
    required this.name,
    required this.id,
    required this.imageUrl,
    required this.description,
    required this.height,
    required this.weight,
    required this.typeOfPokemon,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
    required this.total,
    required this.pokemonColor,
  });

  final String name;
  final String id;
  final String imageUrl;
  final String description;
  final String height;
  final String weight;
  final List<String> typeOfPokemon;
  final String hp;
  final String attack;
  final String defense;
  final String specialAttack;
  final String specialDefense;
  final String speed;
  final String total;
  final Color pokemonColor;

  void printDetails() {
    print('Name: $name');
    print('Id: $id');
    print('ImageUrl: $imageUrl');
    print('Description: $description');
    print('Height: $height');
    print('Weight: $weight');
    print('Type of pokemon: $typeOfPokemon');
    print('Hp: $hp');
    print('Attack: $attack');
    print('Defense: $defense');
    print('Special Attack: $specialAttack');
    print('Special Defense: $specialDefense');
    print('Speed: $speed');
    print('Total: $total');
    print('Pokemon Color: $pokemonColor');
  }
}
