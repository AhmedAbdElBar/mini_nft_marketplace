import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/feature/onBoarding/widgets/custom_componenet_on_boarding_page.dart';
import 'package:mini_nft_marketplace/feature/onBoarding/widgets/custom_image_onboarding_background.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomizedImageOnboardingBackground(),
          Container(
            color: ColorValueManager.vBlackOpec_0_2,
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: PaddingValueManager.vP80,
                    horizontal: PaddingValueManager.vP30),
                child: CustomComponentOnBoardingPage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
