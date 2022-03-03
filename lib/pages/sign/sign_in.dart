import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/components/logo.dart';
import 'package:koruwel/forms/form_sign_in.dart';

class SignIn extends StatelessWidget{
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            logo(),
            formSignIn(context)
          ],
        ),
      ),
    );
  }
}