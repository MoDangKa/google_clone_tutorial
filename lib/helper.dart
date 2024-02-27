import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/screens/search_screen.dart';

void action(
    BuildContext context, String common, String start, String searchQuery) {
  if (start != "0") {
    final _current =
        common == "prev" ? int.parse(start) - 10 : int.parse(start) + 10;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SearchScreen(
          searchQuery: searchQuery,
          start: (_current).toString(),
        ),
      ),
    );
  }
}
