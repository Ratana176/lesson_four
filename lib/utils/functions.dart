import 'package:flutter/material.dart';


/*
  The size of left, right, top, bottom is percent of screen
 */

EdgeInsets setScreenPadding(BuildContext context, {int left = 0, int right = 0, int bottom = 0, int top = 0}){

  double final_left = 0.0;
  double final_right = 0.0;
  double final_top = 0.0;
  double final_bottom = 0.0;

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.height;

  final_top = (top / 100) * height;
  final_left = (left / 100) * width;
  final_bottom = (bottom / 100) * height;
  final_right = (right / 100) * width;

  return EdgeInsets.only(right: final_right, top: final_top, bottom: final_bottom, left: final_left);
}