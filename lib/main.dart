import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/pages/sign/sign_in.dart';
import 'package:koruwel/themes/theme.dart';

void main()=>runApp(GetMaterialApp(home: const SignIn(),theme: Themes.dark,debugShowCheckedModeBanner: false,));