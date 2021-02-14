import 'package:flutter/material.dart';

final ThemeData themeData = new ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,
  primaryColor: Color(0xFFCC0000),
  accentColor: Color(0xFF1C1C1C),
  hintColor: Color(0xFFEFEFEF),

  // Define the default font family.
  fontFamily: 'Poppins',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    button: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    headline1: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 13.5, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 14.0),
  ),
);
