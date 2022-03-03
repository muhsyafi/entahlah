import 'package:flutter/material.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/extensions/color.dart';

abstract class Themes{
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    textTheme: const TextTheme(
      button: TextStyle(color: Colors.black)
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white
        )
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    highlightColor: primaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryColor
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: primaryColor
        )
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide()
      ),
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 16
      )
    ),
    textTheme: const TextTheme(
        button: TextStyle(color: Colors.white)
    ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: primaryColor,
          primary: Colors.white
        )
      ),
  );
}