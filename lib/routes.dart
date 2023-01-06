import 'package:flutter/material.dart';
import 'package:pokedex_app/screen/error/error_screen.dart';
import 'package:pokedex_app/screen/home/home_page.dart';
import 'package:pokedex_app/screen/loading/loading_screen.dart';
import 'package:pokedex_app/screen/pokemonInfo/pokemon_info.dart';
import 'package:pokedex_app/screen/pokemonNotFound/pokemon_not_found.dart';
import 'package:pokedex_app/screen/splash/splash_screen.dart';

enum Routes { splash, home, pokemonInfo, loadingScreen, pokemonNotFoundScreen }

class _Paths {
  static const String splash = '/';
  static const String home = '/home';
  static const String pokemonInfo = '/home/pokemonInfo';
  static const String loadingScreen = '/home/loading-screen';
  static const String pokemonNotFoundScreen = '/home/pokemon-not-found-screen';

  static const Map<Routes, String> _pathMap = {
    Routes.splash: _Paths.splash,
    Routes.home: _Paths.home,
    Routes.pokemonInfo: _Paths.pokemonInfo,
    Routes.loadingScreen: _Paths.loadingScreen,
    Routes.pokemonNotFoundScreen: _Paths.pokemonNotFoundScreen
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
          builder: (context) => const HomePage(),
        );
      case _Paths.pokemonInfo:
        return MaterialPageRoute(
          builder: (context) => const PokemonInfo(),
        );
      case _Paths.loadingScreen:
        return MaterialPageRoute(
          builder: (context) => const LoadingScreen(),
        );
      case _Paths.pokemonNotFoundScreen:
        return MaterialPageRoute(
          builder: (context) => const PokemonNotFound(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorScreen(),
        );
    }
  }

  static Future? push({required Routes route}) {
    return navigatorKey.currentState?.pushNamed(_Paths.of(route));
  }

  static Future? pushReplace({required Routes route}) {
    return navigatorKey.currentState?.pushReplacementNamed(_Paths.of(route));
  }

  static void pop() {
    return navigatorKey.currentState?.pop();
  }
}
