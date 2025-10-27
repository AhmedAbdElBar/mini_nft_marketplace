import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/models/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      //* Body
      body: buildPage(selectedPage),

      //* Bottom Navigation Bar
      bottomNavigationBar: SizedBox(
        height: HeightValueManager.vH90,
        child: Stack(
          alignment: Alignment.center,
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
                      color: ColorValueManager.vWhiteOpec_0_05,
                      width: WidthValueManager.vW1_5,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(RadiusValueManager.vBR45),
                      topRight: Radius.circular(RadiusValueManager.vBR45),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            selectedPage = 0;
                          });
                        },
                        icon: const Icon(
                          Icons.home,
                          color: ColorValueManager.vWhiteColor,
                          size: IconSizeValueManager.vI27,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            selectedPage = 1;
                          });
                        },
                        icon: const Icon(
                          Icons.stacked_bar_chart_rounded,
                          color: ColorValueManager.vWhiteColor,
                          size: IconSizeValueManager.vI27,
                        ),
                      ),
                      const SizedBox(
                        width: WidthValueManager.vW30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                          color: ColorValueManager.vWhiteColor,
                          size: IconSizeValueManager.vI27,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          color: ColorValueManager.vWhiteColor,
                          size: IconSizeValueManager.vI27,
                        ),
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
                  color: ColorValueManager.vWhiteOpec_0_5,
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
      ),
    );
  }
}
