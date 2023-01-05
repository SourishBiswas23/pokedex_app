import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/constants/app_theme.dart';
import 'package:pokedex_app/logic/bloc/page_changer/page_changer_bloc.dart';
import 'package:pokedex_app/routes.dart';

import 'logic/bloc/pokemon_data_provider/pokemon_data_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageChangerBloc(),
        ),
        BlocProvider(
          create: (context) => PokemonDataBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Pokédex',
        theme: AppTheme().lightThemeData,
        navigatorKey: AppNavigator.navigatorKey,
        onGenerateRoute: AppNavigator.onGenerateRoute,
      ),
    );
  }
}
