import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';

class CustomizedImageOnboardingBackground extends StatelessWidget {
  const CustomizedImageOnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        ImagesValueManager.vAOnBoardingImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
