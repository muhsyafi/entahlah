import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/components/text_link.dart';
import 'package:koruwel/pages/pin/pin_create.dart';
import 'package:koruwel/pages/sign/forgot_password/forgot_password.dart';
import 'package:koruwel/pages/sign/sign_up.dart';
import 'package:koruwel/themes/text_style.dart';

Widget formResetPassword(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const Center(child: Text("Reset Password", style: CustomTextStyle.formTitle,),),
        const Center(child: Text("Create your new password", style: CustomTextStyle.paragraphGreyOut,),),
        const SizedBox(height: 32,),
        CustomInput.inputText(labelText: 'New Password', suffixIcon: const Icon(Icons.remove_red_eye_rounded), textInputType: TextInputType.visiblePassword, secureText: true),
        const SizedBox(height: 16,),
        CustomInput.inputText(labelText: 'Confirm New Password', suffixIcon: const Icon(Icons.remove_red_eye_rounded), textInputType: TextInputType.visiblePassword, secureText: true),
        const SizedBox(height: 16,),
        CustomButton.buttonPrimary(context: context, label: 'Save Password', onPressed: ()=>Get.to(()=>const PinCreate())),
      ],
    ),
  );
}