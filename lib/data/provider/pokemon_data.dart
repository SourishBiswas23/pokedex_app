import 'dart:convert';

import 'package:flutter/services.dart';

class PokemonData {
  static final PokemonData _singleton = PokemonData._internal();
  factory PokemonData() {
    return _singleton;
  }
  PokemonData._internal();

  Future<void> initializePokemonData() async {
    _pokemonJsonList = await _initializePokemonJsonList();
  }

  late final List<Map<String, dynamic>> _pokemonJsonList;
  List<Map<String, dynamic>> get pokemonJsonList => _pokemonJsonList;

  Future<List<Map<String, dynamic>>> _initializePokemonJsonList() async {
    final String response = await rootBundle.loadString('assets/pokemons.json');
    List json = await jsonDecode(response);
    return json
        .map((e) => Map.castFrom<dynamic, dynamic, String, dynamic>(e))
        .toList();
  }
}
