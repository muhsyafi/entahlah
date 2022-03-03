import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/button.dart';
import 'package:koruwel/components/card.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/appbars/app_bar_empty.dart';
import 'package:koruwel/pages/profiles/profile_edit.dart';
import 'package:koruwel/themes/text_style.dart';

class TabProfile extends StatelessWidget{
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const AppBarEmpty(),
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                cardProfile(context,picture: "assets/icons/logo.png", fullName: "John Doe", onPressed: ()=>Get.to(()=>const ProfileEdit())),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, color: Colors.transparent, prefixIcon: const Icon(Icons.calculate_outlined, size: 32,color: primaryColor,), label: "Balance", suffixIcon:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("800,000.00"),
                    Icon(Icons.arrow_forward_ios, color: primaryColor,)
                  ],
                )),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, color: Colors.transparent, prefixIcon: const Icon(Icons.credit_card, size: 32,color: primaryColor,), label: "Payment Methods", suffixIcon:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("2 Cards"),
                    Icon(Icons.arrow_forward_ios, color: primaryColor,)
                  ],
                )),
                const SizedBox(height: 32,),
                const Text("App Setting", style: CustomTextStyle.formTitle,),
                const SizedBox(height: 32,),
                CustomButton.buttonOutline(context: context, label: "Notifications", prefixIcon: const Icon(Icons.notification_important, color: primaryColor,), suffixIcon: const Icon(Icons.arrow_forward_ios, color: primaryColor,)),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, label: "Refer A Friend", prefixIcon: const Icon(Icons.compare_arrows_rounded, color: primaryColor,), suffixIcon: const Icon(Icons.arrow_forward_ios, color: primaryColor,)),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, label: "Support", prefixIcon: const Icon(Icons.contact_support, color: primaryColor,), suffixIcon: const Icon(Icons.arrow_forward_ios, color: primaryColor,)),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, label: "Term & Condition", prefixIcon: const Icon(Icons.library_books, color: primaryColor,), suffixIcon: const Icon(Icons.arrow_forward_ios, color: primaryColor,)),
                const SizedBox(height: 16,),
                CustomButton.buttonOutline(context: context, label: "Log Out", prefixIcon: const Icon(Icons.logout, color: primaryColor,), suffixIcon: const Icon(Icons.arrow_forward_ios, color: primaryColor,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}