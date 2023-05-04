import 'package:flutter/material.dart';

class MyTheme{
  static Color wightcolor=Colors.white;
  static Color blackcolor=Color(0xff242424);
  static Color gokdprimary=Color(0xffB7935F);

  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackcolor,
      )
    ),
    textTheme: TextTheme(
        displayLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
          color: blackcolor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        color: blackcolor
      )

    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackcolor,
      unselectedItemColor: wightcolor,

    )

  );
  static ThemeData Darktheme=ThemeData();



}