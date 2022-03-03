import 'package:flutter/material.dart';

Widget labelWithDot({Color? colorDot, Color? colorText, String? label, MainAxisAlignment alignment=MainAxisAlignment.end}){
  return Expanded(child: Row(
    mainAxisAlignment: alignment,
    children: [
      Container(decoration: BoxDecoration(color: colorDot, borderRadius: BorderRadius.circular(6)),width: 12,height: 12,),
      const SizedBox(width: 8,),
      Text("$label", style: TextStyle(color: colorText),)
    ],
  ));
}