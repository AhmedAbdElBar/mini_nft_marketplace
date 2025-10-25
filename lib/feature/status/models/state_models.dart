import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';

Widget buildContent(int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              "📊 Ranking Section",
              style: TextStyle(
                color: ColorValueManager.vWhiteColor,
                fontSize: FontSizeValueManager.vFS25,
                fontFamily: FontFamilyManager.vFSF,
              ),
            ),
          ),
        ),
      );

    case 1:
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              "🔥 Activity Section",
              style: TextStyle(
                color: ColorValueManager.vWhiteColor,
                fontSize: FontSizeValueManager.vFS25,
                fontFamily: FontFamilyManager.vFSF,
              ),
            ),
          ),
        ),
      );

    default:
      return const SizedBox.shrink();
  }
}
