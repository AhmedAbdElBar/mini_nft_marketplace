import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomCategoriesCard extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  const CustomCategoriesCard(
      {super.key, required this.imagePath, required this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusManager.vBR27,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: WidthValueManager.vW252_26,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(RadiusValueManager.vBR27),
              bottomLeft: Radius.circular(RadiusValueManager.vBR27),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: BlurManager.vB1, sigmaY: BlurManager.vB4),
              child: Container(
                width: WidthValueManager.vW252_26,
                height: HeightValueManager.vH54_06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      ColorValueManager.vTransparent,
                      ColorValueManager.vWhiteOpec_0_2
                    ])),
                child: Text(
                  imageTitle,
                  style: const TextStyle(
                      fontSize: FontSizeValueManager.vFS19_82,
                      fontWeight: FontWeightManager.vFBold,
                      fontFamily: FontFamilyManager.vFSF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
