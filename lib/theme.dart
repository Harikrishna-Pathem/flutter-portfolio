import 'package:flutter/material.dart';

const primaryColor = Color(0xFF8B5CF6); // Purple glow color

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFFF6F4FF),
  fontFamily: 'Inter',
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFF0F0624),
  fontFamily: 'Inter',
);
