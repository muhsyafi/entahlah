import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/payments/payment_check_out_success.dart';
import 'package:koruwel/themes/text_style.dart';

class PaymentCheckOut extends StatelessWidget{
  const PaymentCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: primaryColor,
              height: 156,
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Icon(Icons.arrow_back),
                    onTap: ()=>Get.back(),
                  ),
                  const Text("Payment", style: CustomTextStyle.formTitle,),
                  GestureDetector(child: const Icon(Icons.info),)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 132),
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: context.theme.backgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                ),
                child: Column(
                  children: [
                    avatarWithImage(size: 96, borderRadius: 64, color: Colors.white.withAlpha(50)),
                    const SizedBox(height: 16,),
                    const Text("Total Price", style: CustomTextStyle.paragraphGreyOut,),
                    const SizedBox(height: 16,),
                    const Text("BTC 5.00", style: CustomTextStyle.formTitle,),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("GOLD", style: CustomTextStyle.paragraphGreyOut,),
                            Text("32,000")
                          ],
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.deepPurple, size: 42,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("BTC", style: CustomTextStyle.paragraphGreyOut,),
                            Text("5.00")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    CustomButton.buttonOutline(context: context,color: Colors.transparent, label: "Category", prefixIcon: const Icon(Icons.menu, color: primaryColor,), suffixIcon: const Text("Gold", style: TextStyle(color: Colors.deepOrange))),
                    const SizedBox(height: 16,),
                    CustomButton.buttonOutline(context: context,color: Colors.transparent, label: "Martha", prefixIcon: const Icon(Icons.account_circle, color: primaryColor,), suffixIcon: const Text("USA", style: TextStyle(color: Colors.white))),
                    const SizedBox(height: 32,),
                    Row(
                      children: [
                        Expanded(child: CustomButton.buttonPrimaryWithColor(context: context,color: Colors.transparent, textColor: Colors.white, label: "Back", onPressed: ()=>Get.back())),
                        const SizedBox(width: 16,),
                        Expanded(child: CustomButton.buttonPrimary(context: context, label: "Confirm", onPressed: ()=>Get.to(()=>const PaymentCheckOutSuccess())))
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}