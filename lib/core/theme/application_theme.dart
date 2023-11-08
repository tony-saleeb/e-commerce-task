import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xff004182),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff004182),
        selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff06004F)),
          titleMedium: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff666390)),
          bodyLarge: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff06004F)),
          bodyMedium: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff06004F)),
          bodySmall: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)));
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
  );
  static TextStyle customLabelStyle = TextStyle(
      fontFamily: "GoogleFonts.poppins",
      fontSize: 18,
      color: Color(0xff06004F),
      fontWeight: FontWeight.w500);
}
