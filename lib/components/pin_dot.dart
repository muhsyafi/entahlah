import 'package:flutter/material.dart';

Widget pinDot({Color color=Colors.grey}){
  return Container(
    margin: const EdgeInsets.all(8),
    height: 16,
    width: 16,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(16)
    ),
  );
}