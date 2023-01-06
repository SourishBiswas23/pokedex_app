import 'package:flutter/material.dart';

import 'app_bar_logo.dart';
import 'search_bar.dart';

SliverAppBar appBarWidget({
  required TextEditingController searchQuery,
  required BuildContext context,
}) {
  return SliverAppBar(
    floating: true,
    snap: true,
    title: appBarLogo(),
    bottom: searchBar(
      context: context,
      searchQuery: searchQuery,
    ),
  );
}
