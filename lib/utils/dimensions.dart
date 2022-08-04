import 'package:audeck/utils/navigation_service.dart';
import 'package:flutter/material.dart';

class Dimensions {
  //812, 375
  static double screenHeight =
      MediaQuery.of(NavigationService.navigatorKey.currentContext!).size.height;
  static double screenWidth =
      MediaQuery.of(NavigationService.navigatorKey.currentContext!).size.width;

//height
  static double height1 = screenHeight / 812;
  static double height5 = screenHeight / 162.4;
  static double height14 = screenHeight / 58;
  static double height20 = screenHeight / 40.6;
  static double height44 = screenHeight / 18.45;
  static double height52 = screenHeight / 15.61;
  static double height100 = screenHeight / 8.12;
  static double height170 = screenHeight / 4.77;
  static double height260 = screenHeight / 3.12;
  static double height290 = screenHeight / 2.8;
  static double height330 = screenHeight / 2.46;
  static double height350 = screenHeight / 2.32;
  static double height722 = screenHeight / 1.1246537;
  static double height724 = screenHeight / 1.12;

  //width
  static double width2 = screenWidth / 187.5;
  static double width12 = screenWidth / 31.25;
  static double width335 = screenWidth / 1.119;
  static double width375 = screenWidth / 1;
}
