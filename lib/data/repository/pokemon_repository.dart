import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/pokemon_colors.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/data/provider/pokemon_data.dart';

class PokemonRepository {
  static final PokemonRepository _singleton = PokemonRepository._internal();
  factory PokemonRepository() {
    return _singleton;
  }

  PokemonRepository._internal() {
    _pokemonJsonDataList = PokemonData().pokemonJsonList;
    _pokemonList = _pokemonJsonDataList.map((e) => jsonToPokemon(e)).toList();
  }

  late final List<PokemonModel> _pokemonList;
  late final List<Map<String, dynamic>> _pokemonJsonDataList;

  List<PokemonModel> get pokemonList => _pokemonList;

  PokemonModel getPokemonById(String id) {
    PokemonModel pokemonModel =
        _pokemonList.firstWhere((element) => element.id == id);
    return pokemonModel;
  }

  PokemonModel getPokemonByName(String name) {
    name = name.trim().toLowerCase();
    PokemonModel pokemonModel = _pokemonList.firstWhere(
      (element) => element.name.toLowerCase() == name,
    );
    return pokemonModel;
  }

  PokemonModel jsonToPokemon(Map<String, dynamic> data) {
    return PokemonModel(
      name: data["name"] ?? 'No such pokemon',
      id: data["id"] ?? '#000',
      imageUrl: data["imageurl"] ?? 'No such pokemon',
      description: data["xdescription"] ?? 'No such pokemon',
      height: data["height"],
      weight: data["weight"],
      typeOfPokemon:
          List<String>.from(data["typeofpokemon"] ?? ['No such pokemon']),
      hp: data["hp"] ?? '-1',
      attack: data["attack"] ?? '-1',
      defense: data["defense"] ?? '-1',
      specialAttack: data["special_attack"] ?? '-1',
      specialDefense: data["special_defense"] ?? '-1',
      speed: data["speed"] ?? '-1',
      total: data["total"] ?? '-1',
      pokemonColor:
          PokemonColors.pokemonColors[data["typeofpokemon"][0]] ?? Colors.white,
    );
  }
}
