import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/feature/home/screen/home_page.dart';
import 'package:mini_nft_marketplace/feature/status/screen/state_screen.dart';

Widget buildPage(int selectedPage) {
  switch (selectedPage) {
    case 0:
      return const HomePage();

    case 1:
      return const StateScreen();

    default:
      return const SizedBox.shrink();
  }
}
