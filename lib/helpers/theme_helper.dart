import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.dart';

class ThemeHelper {
  static ThemeData lightTheme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
        dialogBackgroundColor: Colors.white,
        cardColor: Colors.white,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 14,
          ),
          bodySmall: GoogleFonts.poppins(
              fontSize: 14, color: Colors.black.withOpacity(.5)),
          displaySmall: GoogleFonts.pacifico(),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffCCCCCC),
          elevation: 5,
          selectedIconTheme: IconThemeData(
            color: Color(0xFF2D5DA7),
          ),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle: TextStyle(color: Color(0xFF2D5DA7)),
          unselectedLabelStyle: TextStyle(color: Colors.black),
        ));
  }

  static ThemeData darkTheme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: GoogleFonts.poppins().fontFamily);
  }
}
