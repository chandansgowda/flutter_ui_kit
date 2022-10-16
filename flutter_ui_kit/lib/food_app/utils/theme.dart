//////////////////////////////////
///()()()()()()()()()()()()()////
///__FOR LATER NOT IN USE NOW__//
////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class JosefinText extends StatelessWidget {
//   const JosefinText({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextStyle(fontStyle: GoogleFonts.josefinSans());
//   }
// }

class AppTheme {
  static ThemeData lightTheme(ColorScheme? lightColorScheme) {
    ColorScheme scheme = lightColorScheme ??
        ColorScheme.fromSeed(seedColor: const Color(0xFFF47C7C));
    return ThemeData(
      colorScheme: scheme,
    );
  }

  static ThemeData darkTheme(ColorScheme? darkColorScheme) {
    ColorScheme scheme = darkColorScheme ??
        ColorScheme.fromSeed(
            seedColor: const Color(0xFFF47C7C), brightness: Brightness.dark);
    return ThemeData(
      colorScheme: scheme,
    );
  }
}
