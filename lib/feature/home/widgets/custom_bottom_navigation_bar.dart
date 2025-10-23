import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightValueManager.vH90,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(RadiusValueManager.vBR45),
              topRight: Radius.circular(RadiusValueManager.vBR45),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: BlurManager.vB50,
                sigmaY: BlurManager.vB100,
              ),
              child: Container(
                height: HeightValueManager.vH90,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorValueManager.vWhiteColorWithOpec_0_05,
                    width: WidthValueManager.vW1_5,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(RadiusValueManager.vBR45),
                    topRight: Radius.circular(RadiusValueManager.vBR45),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      color: ColorValueManager.vWhiteColor,
                      size: IconSizeValueManager.vI27,
                    ),
                    Icon(
                      Icons.stacked_bar_chart_rounded,
                      color: ColorValueManager.vWhiteColor,
                      size: IconSizeValueManager.vI27,
                    ),
                    SizedBox(
                      width: WidthValueManager.vW30,
                      height: HeightValueManager.vH30,
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: ColorValueManager.vWhiteColor,
                      size: IconSizeValueManager.vI27,
                    ),
                    Icon(
                      Icons.person,
                      color: ColorValueManager.vWhiteColor,
                      size: IconSizeValueManager.vI27,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: WidthValueManager.vW70,
              height: HeightValueManager.vH70,
              decoration: ShapeDecoration(
                shape: const StarBorder.polygon(
                  sides: 6,
                  pointRounding: 0.3,
                ),
                color: ColorValueManager.vWhiteColorWithOpec_0_5,
              ),
              child: const Icon(
                Icons.add,
                color: ColorValueManager.vWhiteColor,
                size: IconSizeValueManager.vI27,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
