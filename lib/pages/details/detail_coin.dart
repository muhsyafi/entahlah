import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/themes/text_style.dart';

class DetailCoin extends StatelessWidget{
  const DetailCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const Icon(Icons.arrow_back),
                      onTap: ()=>Get.back(),
                    ),
                    const Text("Spanish Heart", style: CustomTextStyle.formTitle,),
                    GestureDetector(child: const Icon(Icons.info),)
                  ],
                ),
                const SizedBox(height: 32,),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(30),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          avatarWithImage(color: Colors.white.withAlpha(50), borderRadius: 12, padding: 16),
                          const SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Spanish Heart", style: CustomTextStyle.formTitle,),
                              Text("GOLD", style: TextStyle(color: Colors.deepOrange, fontSize: 18),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Seller", style: TextStyle(color: Colors.deepPurple),),
                          Text("Martha", style: TextStyle(color: Colors.white),),
                          Text("Location", style: TextStyle(color: Colors.deepPurple),),
                          Text("USA", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Container(
                        decoration: BoxDecoration(border: Border(
                            top: BorderSide(color: context.theme.backgroundColor, width: 2)
                        )),
                      ),
                      const SizedBox(height: 16,),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      ),
                      const SizedBox(height: 64,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Price", style: CustomTextStyle.paragraph,),
                          Text("36,000.00", style: CustomTextStyle.formTitle,)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: 128,
              decoration:  const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(16), topRight: Radius.circular(16)),
                color: primaryColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(child: CustomButton.buttonPrimaryWithColor(context: context,color: Colors.white, label: "Buy Now", textColor: Colors.black)),
                    const SizedBox(width: 16,),
                    Expanded(child: CustomButton.buttonPrimaryWithColor(context: context,color: Colors.transparent, label: "Add To Cart")),
                  ],
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}