import '../utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData darkThemeData = ThemeData(
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
