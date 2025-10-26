import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';

class CustomTextButtonForStats extends StatefulWidget {
  final String title;
  final VoidCallback function;
  final IconData icon;
  final bool isSelected;
  const CustomTextButtonForStats(
      {super.key,
      required this.title,
      required this.function,
      required this.icon,
      required this.isSelected});

  @override
  State<CustomTextButtonForStats> createState() =>
      _CustomTextButtonForStatsState();
}

class _CustomTextButtonForStatsState extends State<CustomTextButtonForStats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: widget.function,
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: ColorValueManager.vWhiteColor,
                size: IconSizeValueManager.vI20,
              ),
              const SizedBox(
                width: WidthValueManager.vW5,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                    color: ColorValueManager.vWhiteColor,
                    fontSize: FontSizeValueManager.vFS19_82,
                    fontWeight: FontWeightManager.vFW500,
                    fontFamily: FontFamilyManager.vFSF),
              )
            ],
          ),
        ),
        if (widget.isSelected)
          Container(
            height: HeightValueManager.vH2,
            width: WidthValueManager.vW70,
            decoration: BoxDecoration(
              color: ColorValueManager.vIndigoShadow,
              borderRadius: BorderRadiusManager.vBR20,
              boxShadow: const [
                BoxShadow(
                  color: ColorValueManager.vIndigoShadow,
                  blurRadius: RadiusValueManager.vBR10,
                  spreadRadius: BlurRadiusManager.vSpreadRadius,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
