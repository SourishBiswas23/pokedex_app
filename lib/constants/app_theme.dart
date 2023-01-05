import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/app_colors.dart';
import 'package:pokedex_app/constants/text_styles.dart';

class AppTheme {
  final ThemeData _themeData = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: AppColors.appbarBackgroundColor,
      elevation: 0,
      titleTextStyle: TextStyles.homepageTitleTextStyle,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  );

  ThemeData get lightThemeData => _themeData;
}
