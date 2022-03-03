import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/appbars/app_bar_empty.dart';
import 'package:koruwel/tabs/tab_cart.dart';
import 'package:koruwel/tabs/tab_home.dart';
import 'package:koruwel/tabs/tab_profile.dart';
import 'package:koruwel/tabs/tab_wallet.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: menu(context),
          body: const TabBarView(
            children: [
              TabHome(),
              TabWallet(),
              TabCart(),
              TabProfile(),
            ],
          ),
        ),
      );
  }

  Widget menu(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
       color: primaryColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
      ),
      child: TabBar(
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: Colors.white, width: 4.0),
          insets: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 60.0),
        ),
        labelColor: Colors.white,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelColor: Colors.white.withAlpha(50),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5),
        tabs: const [
          Tab(
            text: "Home",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "Wallet",
            icon: Icon(Icons.account_balance_wallet),
          ),
          Tab(
            text: "Chart",
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            text: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }

}