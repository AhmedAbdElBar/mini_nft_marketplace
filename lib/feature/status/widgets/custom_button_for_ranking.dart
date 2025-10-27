import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomButtonForRanking extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomButtonForRanking(
      {super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: WidthValueManager.vW170,
      color: ColorValueManager.vWhiteOpec_0_1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusManager.vBR35,
        side: BorderSide(
          color: ColorValueManager.vWhiteOpec_0_1,
          width: WidthValueManager.vW1_5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
          vertical: PaddingValueManager.vP15,
          horizontal: PaddingValueManager.vP10),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: IconSizeValueManager.vI20,
            color: ColorValueManager.vWhiteColor,
          ),
          const SizedBox(
            width: WidthValueManager.vW5,
          ),
          Text(
            title,
            style: const TextStyle(
                color: ColorValueManager.vWhiteColor,
                fontWeight: FontWeightManager.vFW500,
                fontSize: FontSizeValueManager.vFS15_32,
                fontFamily: FontFamilyManager.vFSF),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: IconSizeValueManager.vI20,
            color: ColorValueManager.vWhiteColor,
          )
        ],
      ),
    );
  }
}
