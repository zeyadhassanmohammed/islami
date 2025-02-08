import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/color_palette.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          color: blackColor, fontSize: 30, fontWeight: FontWeight.w700),
      iconTheme: IconThemeData(color: blackColor, size: 25),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryLightColor,
      elevation: 0,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    cardTheme: CardTheme(
      elevation: 10,
      color: Color(0x90F8F8F8),
    ),
    dividerTheme: DividerThemeData(thickness: 3, color: primaryLightColor),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 30,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      labelLarge: GoogleFonts.inder(fontSize: 30, fontWeight: FontWeight.w400,),
      labelMedium: GoogleFonts.inder(fontSize: 25, fontWeight: FontWeight.w400),
      labelSmall: GoogleFonts.inder(fontSize: 20, fontWeight: FontWeight.w400),
      bodyLarge: GoogleFonts.inder(
          color: blackColor, fontSize: 30, fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.inder(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w400),
      bodySmall: GoogleFonts.inder(
          color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: secondaryLightColor,)
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          color: whiteColor, fontSize: 30, fontWeight: FontWeight.w700),
      iconTheme: IconThemeData(color: whiteColor, size: 25),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: secondaryDarkColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    cardTheme: CardTheme(elevation: 10, color: secondaryDarkColor),
    dividerTheme: DividerThemeData(thickness: 3, color: primaryDarkColor),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        color: whiteColor,
        fontSize: 30,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        color: whiteColor,
        fontSize: 25,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        color: whiteColor,
        fontSize: 20,
      ),
      labelLarge: GoogleFonts.inder(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      labelMedium: GoogleFonts.inder(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      labelSmall: GoogleFonts.inder(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      bodyLarge: GoogleFonts.inder(
          color: primaryDarkColor, fontSize: 30, fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.inder(
          color: primaryDarkColor, fontSize: 25, fontWeight: FontWeight.w400),
      bodySmall: GoogleFonts.inder(
          color: primaryDarkColor, fontSize: 20, fontWeight: FontWeight.w400),
    ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: secondaryDarkColor,)

  );
}
