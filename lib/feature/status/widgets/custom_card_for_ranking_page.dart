import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomCardForRankingPage extends StatelessWidget {
  const CustomCardForRankingPage(
      {super.key,
      required this.index,
      required this.imagePath,
      required this.title,
      required this.supTitle,
      required this.count,
      required this.percentage});
  final int index;
  final String imagePath;
  final String title;
  final String supTitle;
  final num count;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingValueManager.vP10),
      height: HeightValueManager.vH80,
      child: Row(
        children: [
          Text("${index + 1}"),
          const SizedBox(
            width: WidthValueManager.vW10,
          ),
          Image(
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: HeightValueManager.vH10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: FontFamilyManager.vFSF,
                    fontWeight: FontWeightManager.vFBold,
                    fontSize: FontSizeValueManager.vFS15_32,
                    color: ColorValueManager.vWhiteColor),
              ),
              Text(
                supTitle,
                style: const TextStyle(
                    fontFamily: FontFamilyManager.vFSF,
                    fontWeight: FontWeightManager.vFW300,
                    fontSize: FontSizeValueManager.vFS11_71,
                    color: ColorValueManager.vWhiteColor),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: ColorValueManager.vGrayColor,
                    size: IconSizeValueManager.vI13_51,
                  ),
                  Text(
                    "$count",
                    style: const TextStyle(
                      color: ColorValueManager.vWhiteColor,
                    ),
                  ),
                ],
              ),
              Text(
                percentage,
                style: const TextStyle(color: ColorValueManager.vGreenColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
