import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/pin_dot.dart';
import 'package:koruwel/components/pin_number.dart';
import 'package:koruwel/pages/pin/pin_confirm.dart';
import 'package:koruwel/pages/sign/sign_in.dart';
import 'package:koruwel/popup/popup_pin_created.dart';

Widget formPinConfirm(BuildContext context){
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          pinDot(color: Colors.deepPurple),
          pinDot(color: Colors.deepPurple),
          pinDot(),
          pinDot(),
        ],
      ),
      const SizedBox(height: 32,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          pinNumber(label: "1", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "2", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "3", onPressed: ()=>showPopupPinCreated(context)),
        ],
      ),
      const SizedBox(height: 32,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          pinNumber(label: "4", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "5", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "6", onPressed: ()=>showPopupPinCreated(context)),
        ],
      ),
      const SizedBox(height: 32,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          pinNumber(label: "7", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "8", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "9", onPressed: ()=>showPopupPinCreated(context)),
        ],
      ),
      const SizedBox(height: 32,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 64,),
          pinNumber(label: "0", onPressed: ()=>showPopupPinCreated(context)),
          pinNumber(label: "", backSpace: true),
        ],
      ),
    ],
  );
}

