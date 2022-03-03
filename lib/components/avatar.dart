import 'package:flutter/material.dart';

Widget avatarWithImage({double size=64,double borderRadius=32,String assetImage="assets/icons/bitcoin.png", Color color=Colors.white, double padding=8, Function? onTap}){
  return GestureDetector(
    onTap: (){
      if(onTap != null){
        onTap();
      }
    },
    child: Container(padding: EdgeInsets.all(padding),height: size,width : size,decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(borderRadius)),child:
    Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assetImage))),
    ),),
  );
}

Widget avatarWithIcon({double size=64,double borderRadius=32, Icon icon=const Icon(Icons.account_circle), Color color=Colors.white, double padding=8, Function? onTap}){
  return GestureDetector(
    onTap: (){
      if(onTap != null){
        onTap();
      }
    },
    child: Container(padding: EdgeInsets.all(padding),height: size,width : size,decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(borderRadius)),child:
    icon,),
  );
}