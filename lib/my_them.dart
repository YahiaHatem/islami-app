import 'package:flutter/material.dart';

class MyThem{
  static const Color lightprimary =Color(0xffB7935f);
  static const Color darkprimary =Color(0xff141A2E);
  static final ThemeData lightThem = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  primaryColor: lightprimary,
  appBarTheme:const AppBarTheme(
  color:Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: Colors.black)
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        size: 36,
        color: Colors.black
      ),
      unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white
      ),
       selectedLabelStyle: TextStyle(
         color: Colors.black
       ),
      selectedItemColor: Colors.black
    )
  );
  static final ThemeData darkThem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkprimary,
      appBarTheme:const AppBarTheme(
          color:Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
              size: 36,
              color: Colors.black
          ),
          unselectedIconTheme: IconThemeData(
              size: 24,
              color: Colors.white
          ),
          selectedLabelStyle: TextStyle(
              color: Colors.black
          ),
          selectedItemColor: Colors.black
      )
  );
}