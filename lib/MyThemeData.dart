import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static ThemeData lighttheme = ThemeData(
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20.0, fontWeight: FontWeight.w400, color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFFFF),
        ),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: blackColor),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: primaryColor, size: 30),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.shifting,
      ));
  static ThemeData darktheme = ThemeData();
}
