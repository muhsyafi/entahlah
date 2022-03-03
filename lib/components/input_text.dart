import 'package:flutter/material.dart';
import 'package:koruwel/consts/color.dart';

abstract class CustomInput{

  static const String _labelText = "labelText";

  static TextFormField inputText({String labelText = _labelText, Widget? prefixIcon, Widget? suffixIcon, TextInputType? textInputType, bool secureText=false}){
    return TextFormField(
      obscureText: secureText,
      keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon
        ),
    );
  }

  static TextFormField inputOTP(BuildContext context, {bool secureText=false, bool last=false, Function? onChanged}){
    return TextFormField(
      onChanged: (text){
        if(last){
          if(onChanged != null){
            onChanged();
          }
        }else{
          FocusScope.of(context).nextFocus();
        }
      },
      obscureText: secureText,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        )
      ),
    );
  }

  static TextFormField inputSearch(BuildContext context, {bool loading=false, Widget? icon, String labelText="Search", Function? onChanged}){
    return TextFormField(
      onChanged: (value){
        if(onChanged != null){
          onChanged(value);
        }
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white.withAlpha(80))),
        border: const OutlineInputBorder(),
        hintText: labelText,
        suffixIcon: icon
      ),
    );
  }

}