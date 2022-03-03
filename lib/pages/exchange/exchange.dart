import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/themes/text_style.dart';

class Exchange extends StatelessWidget{
  const Exchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(flex: 1,child: Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Icon(Icons.arrow_back),
                  onTap: ()=>Get.back(),
                ),
                const Text("Exchange", style: CustomTextStyle.formTitle,),
                GestureDetector(child: const Icon(Icons.info),)
              ],
            ),
          )),
          Expanded(flex: 3,child: ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: context.theme.backgroundColor,
              child: Column(
                children: [
                  avatarWithImage(assetImage: "assets/icons/bitcoin.png", color: Colors.white.withAlpha(50), size: 128, borderRadius: 64),
                  const SizedBox(height: 16,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text("Spanish Heart", style: CustomTextStyle.formTitle,),
                          Text("36,000")
                        ],
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.deepPurple, size: 42,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("BTC", style: CustomTextStyle.formTitle,),
                          Text("6.00")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", style: TextStyle(fontSize: 11, color: Colors.grey),textAlign: TextAlign.center,),
                  const SizedBox(height: 16,),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: const [
                        Expanded(flex:1,child: Align(child: Icon(Icons.menu, color: Colors.deepPurple,), alignment: Alignment.centerLeft,),),
                        Expanded(flex:3,child: Text("Category", style: TextStyle(color: Colors.deepPurple),textAlign: TextAlign.left,)),
                        Expanded(flex:1,child: Text("Gold", style: TextStyle(color: Colors.deepOrangeAccent),textAlign: TextAlign.right,))
                      ],
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    children: [
                      Expanded(child: CustomButton.buttonPrimaryWithColor(context: context, label: "Back", textColor: Colors.white, color: Colors.transparent, onPressed: ()=>Get.back())),
                      const SizedBox(width: 16,),
                      Expanded(child: CustomButton.buttonPrimary(context: context, label: "Confirm")),
                    ],
                  )
                ],
              ),
            )
          ),),
        ],
      ),
    );
  }
}