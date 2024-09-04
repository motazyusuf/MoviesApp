import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';

class ApplicationThemeManager {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.backgroudColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.appBarColor,
      iconTheme: IconThemeData(color: ColorPalette.appBarItemsColor),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontFamily: 'Inter',
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      titleLarge: TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      titleMedium: TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      titleSmall: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Color(0xFFCBCBCB),
      ),
      bodySmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Color(0xFFB5B4B4),
      ),
    ),
  );
}
