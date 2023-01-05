import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/init.dart';
import 'package:pokedex_app/logic/bloc/page_changer/page_changer_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Init.initialize(context);
    Timer(
      const Duration(seconds: 3),
      () => BlocProvider.of<PageChangerBloc>(context).add(SplashScreenLoaded()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: AppColors.splashScreenBackgroundColor,
            child: Center(
              child: Image.asset(
                'assets/animations/pikachu.gif',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
