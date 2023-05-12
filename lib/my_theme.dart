import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      //type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: GoogleFonts.quicksand(
        fontSize: 12,
      ),
      unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color(0xff242424),
        ),
        titleMedium: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        )),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: lightColor)),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkColor,
    brightness: Brightness.dark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkColor,
      //type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: GoogleFonts.quicksand(
        fontSize: 12,
      ),
      unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: yellowColor,
        ),
        titleMedium: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white)),
  );
}
