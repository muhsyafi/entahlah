import 'package:flutter/material.dart';
import 'package:koruwel/themes/text_style.dart';

Widget logo(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(child: Container(
        margin: const EdgeInsets.only(top: 64),
        padding: const EdgeInsets.all(16),
        width: 128,
        child: Column(
          children: [
            Container(
              width: 128,
              height: 128,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/logo.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            const Center(
              child: Text("Koruwel",style: CustomTextStyle.heading,),
            ),
          ],
        ),
      ))
    ],
  );
}