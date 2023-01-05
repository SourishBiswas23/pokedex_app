import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/app_colors.dart';

import '../../../constants/border_styles.dart';

PreferredSize searchBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(40),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      height: 30,
      width: double.infinity,
      child: TextField(
        cursorColor: AppColors.searchFieldCursorColor,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: AppColors.searchFieldFillColor,
          labelText: 'Search',
          enabledBorder: BorderStyles.searchFieldEnabledBorder,
          focusedBorder: BorderStyles.searchFieldFocusedBorder,
          suffixIcon: GestureDetector(
            child: const Icon(
              Icons.search,
              color: AppColors.searchFieldIconColor,
            ),
            onTap: () {},
          ),
        ),
      ),
    ),
  );
}
