import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/components/logo.dart';
import 'package:koruwel/forms/forgot_password/form_forgot_password.dart';

class ForgotPassword extends StatelessWidget{
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            logo(),
            formForgotPassword(context)
          ],
        ),
      ),
    );
  }
}