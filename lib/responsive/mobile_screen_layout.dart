import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/widgets/mobile/mobile_footer.dart';
import 'package:google_clone_tutorial/widgets/search.dart';
import 'package:google_clone_tutorial/widgets/translation_buttons.dart';
import 'package:google_clone_tutorial/widgets/web/search_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.39,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IMAGES'),
              ],
            ),
          ),
        ),
        actions: [
          // TextButton(
          //   onPressed: () {},
          //   child: const Text(
          //     "Gmail",
          //     style: TextStyle(
          //       color: primaryColor,
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ),
          // ),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text(
          //     "Images",
          //     style: TextStyle(
          //       color: primaryColor,
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   width: 10,
          // ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1a73eb),
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            const Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Search(),
                  SizedBox(height: 20),
                  // SearchButtons(),
                  // SizedBox(height: 20),
                  // TranslationButtons(),
                ],
              ),
            ),
            const MobileFooter()
          ],
        ),
      ),
    );
  }
}
