import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary=Color(0xff141A2E);
  static const Color yellow=Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    bottomSheetTheme:BottomSheetThemeData (
    backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
    ),
    primaryColor: lightPrimary,
    accentColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black)
    ),
    textTheme: const TextTheme(
        headline2: TextStyle(fontSize: 25,color: Colors.black),
        headline4: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
      subtitle2:TextStyle(fontSize: 14,color: Colors.black)
    ),

    scaffoldBackgroundColor: Colors.transparent,


bottomNavigationBarTheme: const BottomNavigationBarThemeData(
selectedIconTheme: IconThemeData(
  size: 45,
),
  unselectedIconTheme: IconThemeData(
    size: 42
  ),
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.white,
  showSelectedLabels: true,
  showUnselectedLabels: false,
),
  );
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme:BottomSheetThemeData (
      backgroundColor: darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
    ),

    cardColor: darkPrimary,
    primaryColor: darkPrimary,
    accentColor: yellow,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white)
    ),
    textTheme: const TextTheme(
        headline2: TextStyle(fontSize: 25,color: Colors.white),
        headline4: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
        subtitle2:TextStyle(fontSize: 14,color: Colors.white)
    ),
    scaffoldBackgroundColor: Colors.transparent,


bottomNavigationBarTheme: const BottomNavigationBarThemeData(
selectedIconTheme: IconThemeData(
  size: 40,
  color: yellow,
),
  unselectedIconTheme: IconThemeData(
    size: 35,
    color: Colors.white,
  ),
  selectedItemColor: yellow,
  unselectedItemColor: Colors.white,
  showSelectedLabels: true,
  showUnselectedLabels: false,
),
  );

}
