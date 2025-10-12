import 'package:flutter/material.dart';
import '../../feature/home/screen/home_screen.dart';
import '../../feature/onBoading/screen/on_boardin_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.onBoarding: (context) => const OnBoardingScreen(),
    RouteNames.home: (context) => const HomeScreen(),
  };
}

class RouteNames {
  static const String onBoarding = "onBoardingScreen";
  static const String home = "homeScreen";
}
