import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/input_text.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/home/home.dart';
import 'package:koruwel/themes/text_style.dart';

class PaymentCheckOutSuccess extends StatelessWidget{
  const PaymentCheckOutSuccess({Key? key}) : super(key: key);

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
                  avatarWithImage(assetImage: "assets/icons/check.png",padding: 16,size: 96, borderRadius: 64, color: Colors.white.withAlpha(50)),
                  const SizedBox(height: 16,),
                  const Text("Payment Success", style: CustomTextStyle.formTitle,),
                  const SizedBox(height: 32,),
                  CustomButton.buttonOutline(context: context, color: Colors.transparent,label: "Category", prefixIcon: const Icon(Icons.menu), suffixIcon: const Text("Food & Drink", style: TextStyle(color: Colors.white))),
                  const SizedBox(height: 16,),
                  CustomButton.buttonOutline(context: context,label: "Total Amount", prefixIcon: const Icon(Icons.calculate_outlined), suffixIcon: const Text("56,000.00", style: TextStyle(color: Colors.white)),color: Colors.transparent),
                  const SizedBox(height: 16,),
                  CustomButton.buttonOutline(context: context,label: "Martha", prefixIcon: const Icon(Icons.home_work_outlined), suffixIcon: const Text("New York", style: TextStyle(color: Colors.white)),color: Colors.transparent),
                  const SizedBox(height: 32,),
                  Row(
                    children: [
                      Expanded(child: CustomButton.buttonPrimary(context: context, label: "OK", onPressed: ()=>Get.offAll(()=>const Home())),)
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