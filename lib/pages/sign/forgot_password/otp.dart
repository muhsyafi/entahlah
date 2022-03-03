import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/forms/forgot_password/form_otp.dart';

class Otp extends StatelessWidget{
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: formOTP(context),
      ),
    );
  }
}