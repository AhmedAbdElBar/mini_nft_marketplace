import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;
  const CustomSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: FontFamilyManager.vFSF,
        fontSize: FontSizeValueManager.vFS20,
        fontWeight: FontWeightManager.vFBold,
        color: ColorValueManager.vWhiteColor,
      ),
    );
  }
}
