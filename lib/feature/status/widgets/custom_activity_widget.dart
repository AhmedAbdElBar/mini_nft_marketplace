import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';

class CustomActivityWidget extends StatelessWidget {
  const CustomActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "🔥 Activity Section",
        style: TextStyle(
          color: ColorValueManager.vWhiteColor,
          fontSize: FontSizeValueManager.vFS25,
          fontFamily: FontFamilyManager.vFSF,
        ),
      ),
    );
  }
}
