import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/forms/form_pin_confirm.dart';
import 'package:koruwel/forms/form_pin_create.dart';
import 'package:koruwel/themes/text_style.dart';

class PinConfirm extends StatelessWidget{
  const PinConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(height: 96,),
            const Center(child: Text("Confirm Your PIN", style: CustomTextStyle.formTitle,),),
            const Center(child: Padding(padding: EdgeInsets.symmetric(horizontal: 32), child: Text("Security code is used to verify your every transaction to be more secure",textAlign: TextAlign.center, style: CustomTextStyle.paragraphGreyOut,),),),
            const SizedBox(height: 32,),
            formPinConfirm(context),
          ],
        ),
      ),
    );
  }
}