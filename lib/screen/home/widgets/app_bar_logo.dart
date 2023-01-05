import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Row appBarLogo() {
  return Row(
    children: [
      SizedBox(
        child: SvgPicture.asset(
          'assets/images/pokeball-logo.svg',
          height: 30,
          width: 30,
          fit: BoxFit.scaleDown,
        ),
      ),
      const SizedBox(width: 20),
      const Text('Pokédex'),
    ],
  );
}
