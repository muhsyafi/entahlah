import 'package:flutter/material.dart';
import 'package:koruwel/consts/color.dart';

abstract class CustomTextStyle{
  static const TextStyle formTitle = TextStyle(
      fontSize: 24,
      color: Colors.white
  );
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    color: primaryColor
  );
  static const TextStyle link = TextStyle(
      color: primaryColor
  );
  static const TextStyle paragraph = TextStyle(
      color: Colors.white
  );
  static const TextStyle paragraphGreyOut = TextStyle(
      color: Colors.grey
  );
}