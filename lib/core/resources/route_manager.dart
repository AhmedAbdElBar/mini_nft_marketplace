import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/feature/onBoarding/screen/on_boarding_screen.dart';
import 'package:mini_nft_marketplace/feature/status/screen/state_screen.dart';
import '../../feature/home/screen/home_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.onBoarding: (context) => const OnBoardingScreen(),
    RouteNames.home: (context) => const HomeScreen(),
    RouteNames.state: (context) => const StateScreen(),
  };
}

class RouteNames {
  static const String onBoarding = "onBoardingScreen";
  static const String home = "homeScreen";
  static const String state = "stateScreen";
}
