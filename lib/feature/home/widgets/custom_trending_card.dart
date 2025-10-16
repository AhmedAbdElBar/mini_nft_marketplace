import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomTrendingCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final num count;
  const CustomTrendingCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(RadiusValueManager.vBR27),
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: BlurManager.vB1, sigmaY: BlurManager.vB4),
        child: SizedBox(
          width: WidthValueManager.vW157_66,
          height: HeightValueManager.vH194_89,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(PaddingValueManager.vP10),
                width: WidthValueManager.vW157_66,
                height: HeightValueManager.vH194_89,
                decoration: BoxDecoration(
                    color: ColorValueManager.vWhiteColorWithOpec_0_05,
                    borderRadius:
                        BorderRadius.circular(RadiusValueManager.vBR27),
                    border: Border.all(
                        color: ColorValueManager.vWhiteColorWithOpec_0_05)),
              ),
              Padding(
                padding: const EdgeInsets.all(PaddingValueManager.vP10),
                child: Column(
                  children: [
                    SizedBox(
                      width: WidthValueManager.vW139_64,
                      height: HeightValueManager.vH139_64,
                      child: Image(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: HeightValueManager.vH10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeightManager.vFBold,
                            fontSize: FontSizeValueManager.vFS11_71,
                            fontFamily: FontFamilyManager.vFSF,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: IconSizeValueManager.vI17,
                            ),
                            const SizedBox(
                              width: WidthValueManager.vW1_5,
                            ),
                            Text("$count")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
