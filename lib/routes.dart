import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_app/screen/error/error_screen.dart';
import 'package:pokedex_app/screen/home/home_page.dart';
import 'package:pokedex_app/screen/splash/splash_screen.dart';

enum Routes { splash, home, pokemonInfo }

class _Paths {
  static const String splash = '/';
  static const String home = '/home';
  static const String pokemonInfo = '/home/pokemonInfo';

  static const Map<Routes, String> _pathMap = {
    Routes.splash: _Paths.splash,
    Routes.home: _Paths.home,
    Routes.pokemonInfo: _Paths.pokemonInfo,
  };

  static String of(Routes route) => _pathMap[route] ?? splash;
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Paths.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case _Paths.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorScreen(),
        );
    }
  }

  static Future? push({required Routes route}) {
    return navigatorKey.currentState?.pushNamed(_Paths.of(route));
  }
}
