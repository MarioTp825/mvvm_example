import 'package:flutter/material.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF684397)),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
    titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
  ),
);

extension ThemeExtension on BuildContext {
  TextTheme get themeFonts => Theme.of(this).textTheme;

  ColorScheme get themeColors => Theme.of(this).colorScheme;
}