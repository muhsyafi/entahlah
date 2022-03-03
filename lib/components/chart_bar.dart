import 'package:flutter/material.dart';

Widget chartBar(){
  return SizedBox(
    height: 140,
    width: double.infinity,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              detailChartBar(height: 50,vaule: 32),
              detailChartBar(height: 130,vaule: 256),
              detailChartBar(height: 100,vaule: 144),
              detailChartBar(height: 120,vaule: 168),
              detailChartBar(height: 110,vaule: 150),
              detailChartBar(height: 70,vaule: 75),
              detailChartBar(height: 50,vaule: 32),
            ],
          ),
        )
      ],
    ),
  );
}

Widget detailChartBar({double height=0, int vaule=0}){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    height: height,
    width: 32,
    color: Colors.white.withAlpha(40),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Text("$vaule", style: const TextStyle(color: Colors.white),),
        )
      ],
    ),
  );
}