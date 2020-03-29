import 'package:flutter/material.dart';

Map<int, Color> colorGreen =
{
50:Color.fromRGBO(62,178,122, .1),
100:Color.fromRGBO(62,178,122, .2),
200:Color.fromRGBO(62,178,122, .3),
300:Color.fromRGBO(62,178,122, .4),
400:Color.fromRGBO(62,178,122, .5),
500:Color.fromRGBO(62,178,122, .6),
600:Color.fromRGBO(62,178,122, .7),
700:Color.fromRGBO(62,178,122, .8),
800:Color.fromRGBO(62,178,122, .9),
900:Color.fromRGBO(62,178,122, 1),
};

final appTheme = ThemeData(
  primarySwatch: MaterialColor(0xFF3EB27A, colorGreen),
  textTheme: TextTheme(
    display4: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.blueAccent,
    ),
  ),
);