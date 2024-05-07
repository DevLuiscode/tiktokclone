import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_clone/shared/constants/colors.dart';

final ligthTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  fontFamily: "proximanova",
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Colors.white,
  ),
  textTheme: TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 44,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 40,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 21,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 19,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "proximanova",
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 21,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: "proximanova",
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 19,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: "proximanova",
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: "proximanova",
    ),
    displayLarge: const TextStyle().copyWith(
      fontSize: 17,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: "proximanova",
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 15,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: "proximanova",
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 15,
      color: AppColors.grey6,
      fontWeight: FontWeight.normal,
      fontFamily: "proximanova",
    ),
  ),
);
