import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 Color PrimaryColor = Color(0xFFB7935F);
 Color PrimaryDarkColor = Color(0xFF141A2E);
 Color blackColor =Color(0xFF242424);
 Color yellowColor = Color(0xFFFACC1D);

class MyThemeData {
  static ThemeData LightTheme = ThemeData(
    dividerColor: PrimaryColor,
    primaryColor: PrimaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      backgroundColor: PrimaryColor,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: blackColor,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      //titleTextStyle:,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: PrimaryColor,
      onPrimary: PrimaryColor,
      secondary: PrimaryColor,
      onSecondary: PrimaryColor,
      error: PrimaryColor,
      onError: PrimaryColor,
      surface: PrimaryColor,
      onSurface: PrimaryColor,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    dividerColor: yellowColor,
    primaryColor: PrimaryDarkColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      backgroundColor: PrimaryDarkColor,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: Colors.white,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      //titleTextStyle:,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: PrimaryDarkColor,
      onPrimary: PrimaryDarkColor,
      secondary: PrimaryDarkColor,
      onSecondary: PrimaryDarkColor,
      error: PrimaryDarkColor,
      onError: PrimaryDarkColor,
      surface: PrimaryDarkColor,
      onSurface: PrimaryDarkColor,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: yellowColor,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
