import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValueManager.vBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorValueManager.vTransparent,
        automaticallyImplyLeading: false,
        title: const Text(
          "State",
          style: TextStyle(
              color: ColorValueManager.vWhiteColor,
              fontFamily: FontFamilyManager.vFSF,
              fontWeight: FontWeightManager.vFBold,
              fontSize: FontSizeValueManager.vFS27),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: ColorValueManager.vWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
