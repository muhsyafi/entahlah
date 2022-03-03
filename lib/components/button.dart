import 'package:flutter/material.dart';

abstract class CustomButton{
  static Widget buttonPrimary({required BuildContext context,String label='Button', Function? onPressed}){
    return OutlinedButton(onPressed:(){
      if(onPressed != null){
        onPressed();
      }
    }, child: SizedBox(
      height: 32,
      width: double.infinity,
      child: Center(child: Text(label),),
    ),);
  }
  static Widget buttonPrimaryWithColor({required BuildContext context,String label='Button', double height=32, Function? onPressed, Color color=Colors.white, textColor=Colors.white, double borderRadius=8}){
    return OutlinedButton(onPressed:(){
      if(onPressed != null){
        onPressed();
      }
    },style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        )
      ),
      backgroundColor: MaterialStateProperty.all(color),
      side: MaterialStateProperty.all(const BorderSide(width: 2, color: Colors.white)),
    ), child: SizedBox(
      height: height,
      width: double.infinity,
      child: Center(child: Text(label,style: TextStyle(color: textColor),),),
    ),);
  }

  static Widget buttonOutline({required BuildContext context, double height=32, required Widget prefixIcon, String label='Button', required Widget suffixIcon, Function? onPressed, Color color=Colors.transparent, textColor=Colors.white, double borderRadius=8}){
    return OutlinedButton(onPressed:(){
      if(onPressed != null){
        onPressed();
      }
    },style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)
          )
      ),
      backgroundColor: MaterialStateProperty.all(color),
      side: MaterialStateProperty.all(const BorderSide(width: 2, color: Colors.white)),
    ), child: SizedBox(
      height: height,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(flex: 3,child: Row(
            children: [
              prefixIcon,
              const SizedBox(width: 16,),
              Text(label),
            ],
          )),
          Expanded(flex: 2,child: Align(alignment: Alignment.centerRight,child: suffixIcon,)),
        ],
      ),
    ),);
  }


  static Widget buttonWhite({required BuildContext context,String label='Button', Function? onPressed, double borderRadius=12}){
    return MaterialButton(color: Colors.white,shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
    ),onPressed:(){
      if(onPressed != null){
        onPressed();
      }
    }, child: SizedBox(
      height: 16,
      width: double.infinity,
      child: Center(child: Text(label,style: const TextStyle(color: Colors.black),),),
    ),);
  }
}