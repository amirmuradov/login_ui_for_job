import 'package:flutter/material.dart';

const primaryColor = Color(0xFF6E32ED);
const textColor = Color(0xFF0E0E10);
const scaffoldbackgrouncolor = Color(0xFFFFFFFF);
const cardcolor = Color(0xFFF6AE5A);
const secondaryheadercolor = Color(0xFFEB8079);
const focuscolor = Color(0xFFDFE7F7);
const canvascolor = Color(0xFF327DED);
const dividercolor = Color(0xFFCCD3DF);
ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  canvasColor: canvascolor,
  dividerColor: dividercolor,
  secondaryHeaderColor: secondaryheadercolor,
  cardColor: cardcolor,
  focusColor: focuscolor,
  hintColor: textColor,
  scaffoldBackgroundColor: scaffoldbackgrouncolor,
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 17,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 24,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 32,
    ),
  ),
);
