import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/pages/sign/forgot_password/reset_password.dart';
import 'package:koruwel/themes/text_style.dart';

Widget formOTP(BuildContext context){
  return Column(
    children:  [
      const SizedBox(height: 128,),
      Center(
        child: Container(
          height: 128,
          width: 128,
          decoration: BoxDecoration(
              color: Colors.white.withAlpha(50),
              borderRadius: const BorderRadius.all(Radius.circular(128))
          ),
          child: const Icon(Icons.lock, color: Colors.white,size: 64,),
        ),
      ),
      const SizedBox(height: 32,),
      const Text("Enter the OTP Code", style: CustomTextStyle.formTitle,),
      const Text("We've sent you an OTP code on Email", style: CustomTextStyle.paragraphGreyOut,),
      const SizedBox(height: 64,),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 8),child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Padding(padding: const EdgeInsets.all(8),child: CustomInput.inputOTP(context),),flex: 1,),
          Expanded(child: Padding(padding: const EdgeInsets.all(8),child: CustomInput.inputOTP(context),),flex: 1,),
          Expanded(child: Padding(padding: const EdgeInsets.all(8),child: CustomInput.inputOTP(context),),flex: 1,),
          Expanded(child: Padding(padding: const EdgeInsets.all(8),child: CustomInput.inputOTP(context,last: true, onChanged: ()=>Get.to(()=>const ResetPassword())),),flex: 1,),
        ],
      ),)
    ],
  );
}

