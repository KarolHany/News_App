import 'package:flutter/material.dart';

ThemeData lightmood = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      secondary: const Color.fromARGB(255, 135, 134, 134),
      inversePrimary: Colors.grey.shade800,
      inverseSurface: Colors.purple,
    ));

ThemeData darkmood = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: const Color.fromARGB(255, 24, 24, 24),
      primary: const Color.fromARGB(255, 34, 34, 34),
      secondary: const Color.fromARGB(255, 160, 159, 159),
      inversePrimary: Colors.grey.shade300,
      inverseSurface: Colors.red,
    ));
