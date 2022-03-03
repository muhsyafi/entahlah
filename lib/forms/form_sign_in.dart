import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/components/text_link.dart';
import 'package:koruwel/pages/home/home.dart';
import 'package:koruwel/pages/sign/forgot_password/forgot_password.dart';
import 'package:koruwel/pages/sign/sign_up.dart';
import 'package:koruwel/themes/text_style.dart';

Widget formSignIn(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const Center(child: Text("Sign In", style: CustomTextStyle.formTitle,),),
        const SizedBox(height: 32,),
        CustomInput.inputText(labelText: 'Username / Email', textInputType: TextInputType.emailAddress),
        const SizedBox(height: 16,),
        CustomInput.inputText(labelText: 'Password', suffixIcon: const Icon(Icons.remove_red_eye_rounded), textInputType: TextInputType.visiblePassword, secureText: true),
        const SizedBox(height: 16,),
        CustomButton.buttonPrimary(context: context, label: 'Sign In', onPressed: ()=>Get.offAll(()=>const Home())),
        const SizedBox(height: 16,),
        customLink(label: "Forgot Password?", onPressed: ()=>Get.to(()=>const ForgotPassword())),
        const SizedBox(height: 32,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have accounte yet?", style: CustomTextStyle.paragraph,),
            const SizedBox(width: 8,),
            customLink(label: "Sign Up", onPressed:()=>Get.to(()=>const SignUp()))
          ],
        )
      ],
    ),
  );
}