import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/widgets/search_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // web header
          const SearchHeader()
          // tabs for news image etc
          // search results
          // pagination buttons
        ],
      ),
    );
  }
}
