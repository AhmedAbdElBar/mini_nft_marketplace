import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/constants/constants.dart';
import 'package:mini_nft_marketplace/core/resources/border_radius_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/feature/status/widgets/custom_card_for_ranking_page.dart';

class CustomRankingWidget extends StatelessWidget {
  const CustomRankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadiusManager.vBR20,
          child: BackdropFilter(
            // to make the box with a blur effect==================
            filter: ImageFilter.blur(
                sigmaX: BlurManager.vB10, sigmaY: BlurManager.vB10),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: PaddingValueManager.vP8,
                  vertical: PaddingValueManager.vP10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusManager.vBR20,
                  color: ColorValueManager.vWhiteOpec_0_1,
                  border: Border.all(
                      color: ColorValueManager.vWhiteOpec_0_1,
                      width: WidthValueManager.vW1_5)),
              child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CustomCardForRankingPage(
                        index: index,
                        imagePath: Constants.rankingList[index].imagePath,
                        title: Constants.rankingList[index].title,
                        supTitle: Constants.rankingList[index].supTitle,
                        count: Constants.rankingList[index].count,
                        percentage: Constants.rankingList[index].percentage,
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                      ),
                  itemCount: Constants.rankingList.length),
            ),
          ),
        ),
      ),
    );
  }
}
