import 'package:flutter/material.dart';
import '../utils/colors.dart';

final ThemeData lightThemeData = ThemeData(
  primaryColor: ColorUtils.darkBlueColor,
  accentColor: ColorUtils.darkBlueColor,
  splashColor: ColorUtils.darkBlueColor,
  highlightColor: ColorUtils.darkBlueColor,
  // fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
