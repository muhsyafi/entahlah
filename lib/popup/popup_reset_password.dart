import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/pages/sign/forgot_password/otp.dart';
import 'package:koruwel/themes/text_style.dart';

void showPopupResetPassword(BuildContext context){
  Get.defaultDialog(
    title: '',
    backgroundColor: Colors.black,
    content: BackdropFilter(filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 96,
            width: 96,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/check.png")
                )
            ),
          ),
          const SizedBox(height: 16,),
          const Text("We've sent you a link to reset your password. Check your email!", style: CustomTextStyle.paragraph,),
          const SizedBox(height: 16,),
          CustomButton.buttonPrimary(context: context, label: "OK", onPressed: ()=>Get.to(()=>const Otp()))
        ],
      ),
    ),)
  );
}