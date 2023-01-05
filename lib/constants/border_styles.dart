import 'package:flutter/material.dart';

import 'app_colors.dart';

class BorderStyles {
  static const searchFieldEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(
      color: AppColors.searchFieldEnabledBorderColor,
    ),
  );
  static const searchFieldFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(
      color: AppColors.searchFieldEnabledBorderColor,
    ),
  );
}
