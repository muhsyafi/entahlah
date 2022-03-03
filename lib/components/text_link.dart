import 'package:flutter/material.dart';
import 'package:koruwel/themes/text_style.dart';

Widget customLink({String label = "This is link", Function? onPressed}){
  return GestureDetector(
    child: Text(label, style: CustomTextStyle.link),
    onTap: (){
      if(onPressed != null){
        onPressed();
      }
    },
  );
}