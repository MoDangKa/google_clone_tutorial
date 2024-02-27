import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/responsive/mobile_screen_layout.dart';
import 'package:google_clone_tutorial/responsive/responsive_layout_screen.dart';
import 'package:google_clone_tutorial/responsive/web_screen_layout.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_clone_tutorial/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = ColorScheme.fromSeed(
      brightness: MediaQuery.platformBrightnessOf(context),
      seedColor: Colors.indigo,
      // background: Colors.amber,
      background: backgroundColor,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData(
        colorScheme: scheme,
        fontFamily: GoogleFonts.sarabun().fontFamily,
      ),
      // theme:
      //     ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
      // home: SearchScreen(),
    );
  }
}
