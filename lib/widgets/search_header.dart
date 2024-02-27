import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/screens/search_screen.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 15,
              top: 4,
            ),
            child: Image.asset(
              'assets/images/google-logo.png',
              height: 30,
              width: 92,
            ),
          ),
          const SizedBox(width: 27),
          SizedBox(
            width: size.width * 0.45,
            // height: 44,
            child: TextFormField(
              controller: myController,
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(
                      searchQuery: query,
                      start: "0",
                    ),
                  ),
                );
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: searchColor,
                contentPadding: const EdgeInsets.only(left: 15),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: searchColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/images/mic-icon.svg',
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                  searchQuery: myController.text,
                                  start: "0",
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.search,
                            color: blueColor,
                          ),
                          hoverColor: Colors.transparent),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   width: size.width * 0.45,
          //   height: 44,
          //   decoration: BoxDecoration(
          //     color: searchColor,
          //     borderRadius: BorderRadius.circular(22),
          //     border: Border.all(color: searchBorder),
          //   ),
          //   child: TextFormField(
          //     onFieldSubmitted: (query) {
          //       Navigator.of(context).push(
          //         MaterialPageRoute(
          //           builder: (context) => SearchScreen(
          //             searchQuery: query,
          //             start: "0",
          //           ),
          //         ),
          //       );
          //     },
          //     style: const TextStyle(fontSize: 16),
          //     textAlignVertical: TextAlignVertical.center,
          //     decoration: InputDecoration(
          //       suffixIcon: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 15),
          //         child: Container(
          //           constraints: const BoxConstraints(maxWidth: 150),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               SvgPicture.asset(
          //                 'assets/images/mic-icon.svg',
          //                 height: 20,
          //                 width: 20,
          //               ),
          //               const SizedBox(width: 20),
          //               const Icon(
          //                 Icons.search,
          //                 color: blueColor,
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       focusedBorder: InputBorder.none,
          //       enabledBorder: InputBorder.none,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
