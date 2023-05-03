import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
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
        bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        bodySmall: TextStyle(
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
  static ThemeData darkTheme = ThemeData();
}
