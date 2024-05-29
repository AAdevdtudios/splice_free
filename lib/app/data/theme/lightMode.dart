import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:splice/app/data/constData/constData.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: primaryColor,
    secondary: Colors.grey.shade200,
  ),
  primaryColorLight: primaryColor,
  primaryColor: primaryColor,
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[700],
        displayColor: Colors.black,
        fontFamily: ElevarmFontFamilies.poppins().fontFamily,
      ),
);
