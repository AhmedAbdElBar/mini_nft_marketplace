import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValueManager.vBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorValueManager.vBackgroundColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          StringsValueManager.vHomePageTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: FontFamilyManager.vFSF,
              fontSize: FontSizeValueManager.vF25_23,
              fontWeight: FontWeightManager.vFBold,
              color: ColorValueManager.vWhiteColor),
        ),
      ),
      body: const Center(
        child: Text("home Screen"),
      ),
    );
  }
}
