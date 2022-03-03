import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/pages/sign/sign_in.dart';
import 'package:koruwel/popup/popup_pin_created.dart';
import 'package:koruwel/themes/text_style.dart';

Widget pinNumber({String label='0', Function? onPressed, bool backSpace=false}){
  return SizedBox(
    width: 64,
    height: 64,
    child: OutlinedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 1.0, color: Colors.white,),
        primary: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      onPressed: (){
        print(onPressed);
        if(onPressed != null){
          onPressed();
        }
      },
      child: backSpace ? const Icon(Icons.backspace_outlined) : Text(label, style: CustomTextStyle.formTitle,),
    ),
  );
}