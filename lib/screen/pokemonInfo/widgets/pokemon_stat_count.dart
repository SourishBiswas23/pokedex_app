import 'package:flutter/material.dart';

Padding pokemonStatCount(MapEntry<String, String> entry) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 5,
    ),
    child: Text(
      entry.value,
    ),
  );
}
