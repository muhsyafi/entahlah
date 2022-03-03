import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/components/logo.dart';
import 'package:koruwel/forms/forgot_password/form_reset_password.dart';

class ResetPassword extends StatelessWidget{
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            logo(),
            formResetPassword(context),
          ],
        ),
      ),
    );
  }
}