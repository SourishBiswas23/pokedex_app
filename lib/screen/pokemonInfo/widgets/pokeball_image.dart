import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Align pokeballImage(Size screenSize) {
  return Align(
    alignment: Alignment.topRight,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SvgPicture.asset(
        'assets/images/pokeball-logo.svg',
        width: screenSize.width * 0.5,
        height: screenSize.width * 0.5,
        fit: BoxFit.cover,
        color: Colors.white12,
      ),
    ),
  );
}
