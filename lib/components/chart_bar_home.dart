import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

const Color barBackgroundColor = Colors.blueGrey;

const List<Color> availableColors = [
  // Colors.purpleAccent,
  // Colors.yellow,
  // Colors.lightBlue,
  // Colors.orange,
  // Colors.pink,
  // Colors.redAccent,
  Colors.deepPurple,
  Colors.deepOrange,
];


Widget chartBarHome(){
  return Column(
    children: [
      SizedBox(
        height: 156,
        width: double.infinity,
        child: BarChart(
          randomData(),
          //BarChartData(
          //  // read about it in the BarChartData section
          //),
          swapAnimationDuration: const Duration(milliseconds: 150), // Optional
          swapAnimationCurve: Curves.linear, // Optional
        ),
      ),
    ],
  );
}

BarChartGroupData makeGroupData(
    int x,
    double y, {
      bool isTouched = false,
      Color barColor = Colors.white,
      double width = 22,
      List<int> showTooltips = const [],
    }) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        colors: isTouched ? [Colors.yellow] : [barColor],
        width: width,
        borderSide: isTouched
            ? BorderSide(color: Colors.yellow.shade500, width: 1)
            : const BorderSide(color: Colors.white, width: 0),
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 20,
          colors: [barBackgroundColor],
        ),
      ),
    ],
    showingTooltipIndicators: showTooltips,
  );
}

BarChartData randomData() {
  return BarChartData(
    barTouchData: BarTouchData(
      enabled: false,
    ),
    titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Mon';
              case 1:
                return 'Tue';
              case 2:
                return 'Wed';
              case 3:
                return 'Thu';
              case 4:
                return 'Fri';
              case 5:
                return 'Sat';
              case 6:
                return 'Sun';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
        topTitles: SideTitles(
          showTitles: false,
        ),
        rightTitles: SideTitles(
          showTitles: false,
        )),
    borderData: FlBorderData(
      show: false,
    ),
    barGroups: List.generate(7, (i) {
      switch (i) {
        case 0:
          return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 1:
          return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 2:
          return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 3:
          return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 4:
          return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 5:
          return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        case 6:
          return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
              barColor: availableColors[
              Random().nextInt(availableColors.length)]);
        default:
          return throw Error();
      }
    }),
    gridData: FlGridData(show: false),
  );
}