import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/feature/onBoading/widgets/custom_card_on_boarding_page.dart';
import 'package:mini_nft_marketplace/feature/onBoading/widgets/custom_title_on_borading_page.dart';

class CustomComponentOnBoardingPage extends StatelessWidget {
  const CustomComponentOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          //* 🔹 Onboarding Title
          CustomTitleOnBoradingPage(),
          Spacer(),
          //* 🔹 Blurred Card (Subtitle + Description + Button)
          CustomCardOnBoardingPage()
        ],
      ),
    );
  }
}
