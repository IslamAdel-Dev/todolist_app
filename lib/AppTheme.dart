import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xFFDFECDB);
  static const Color darkprimary = Color(0xff060E1E);
  static const Color blue = Color(0xff5D9CEC);
  static const Color green = Color(0xff61E757);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff060E1E);
  static const Color grey = Color(0xffC8C9CB);

  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: lightprimary,
    bottomAppBarTheme: BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: white,
      unselectedItemColor: grey,
      selectedItemColor: blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: blue,
      foregroundColor: white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 4, color: white),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      iconSize: 27,
    ),
    textTheme: TextTheme(
      titleMedium:
          TextStyle(fontSize: 15, color: black, fontWeight: FontWeight.bold),
      titleLarge:
          TextStyle(fontSize: 18, color: black, fontWeight: FontWeight.bold),
      headlineSmall:
          TextStyle(fontSize: 22, color: black, fontWeight: FontWeight.bold),
    ),
  );
  static ThemeData darkmode = ThemeData(
    scaffoldBackgroundColor: darkprimary,
    bottomAppBarTheme: BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: white,
      unselectedItemColor: grey,
      selectedItemColor: blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: blue,
      foregroundColor: white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 4, color: white),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      iconSize: 27,
    ),
    textTheme: TextTheme(
      titleMedium:
      TextStyle(fontSize: 15, color: black, fontWeight: FontWeight.bold),
      titleLarge:
      TextStyle(fontSize: 18, color: black, fontWeight: FontWeight.bold),
      headlineSmall:
      TextStyle(fontSize: 22, color: black, fontWeight: FontWeight.bold),
    ),
  );
}
