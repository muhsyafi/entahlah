import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/components/text_link.dart';
import 'package:koruwel/themes/text_style.dart';

Widget formSignUp(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const Center(child: Text("Sign Up", style: CustomTextStyle.formTitle,),),
        const SizedBox(height: 32,),
        CustomInput.inputText(labelText: 'Enter Full Name'),
        const SizedBox(height: 16,),
        CustomInput.inputText(labelText: 'Enter Email Address', textInputType: TextInputType.emailAddress),
        const SizedBox(height: 16,),
        CustomInput.inputText(labelText: 'Birthday', textInputType: TextInputType.emailAddress, suffixIcon: const Icon(Icons.calendar_today)),
        const SizedBox(height: 16,),
        CustomInput.inputText(labelText: 'Password', suffixIcon: const Icon(Icons.remove_red_eye_rounded)),
        const SizedBox(height: 16,),
        CustomButton.buttonPrimary(context: context, label: 'Sign Up'),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?", style: CustomTextStyle.paragraph,),
            const SizedBox(width: 8,),
            customLink(label: "Sign In", onPressed:()=>Get.back())
          ],
        )
      ],
    ),
  );
}