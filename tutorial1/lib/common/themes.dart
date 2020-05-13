import 'package:flutter/material.dart';

Map<int, Color> colorGreen = {
  50: Color.fromRGBO(62, 178, 122, .1),
  100: Color.fromRGBO(62, 178, 122, .2),
  200: Color.fromRGBO(62, 178, 122, .3),
  300: Color.fromRGBO(62, 178, 122, .4),
  400: Color.fromRGBO(62, 178, 122, .5),
  500: Color.fromRGBO(62, 178, 122, .6),
  600: Color.fromRGBO(62, 178, 122, .7),
  700: Color.fromRGBO(62, 178, 122, .8),
  800: Color.fromRGBO(62, 178, 122, .9),
  900: Color.fromRGBO(62, 178, 122, 1),
};

final appTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],
  accentColor: Colors.cyan[600],

  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
