import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(
              title: 'Google Search',
            ),
            SizedBox(width: 8),
            SearchButton(title: "I\'m feeling Luck")
          ],
        )
      ],
    );
  }
}
