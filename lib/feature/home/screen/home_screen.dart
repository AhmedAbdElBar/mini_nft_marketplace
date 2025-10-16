import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_categories_card.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_trending_card.dart';

import '../../../core/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //  AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text(
          StringsValueManager.vHPTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: FontFamilyManager.vFSF,
            fontSize: FontSizeValueManager.vF25_23,
            fontWeight: FontWeightManager.vFBold,
            color: ColorValueManager.vWhiteColor,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(ImagesValueManager.vAHBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: PaddingValueManager.vP8,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: HeightValueManager.vH157_52,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomCategoriesCard(
                        imagePath: Constants.categoryList[index].image,
                        imageTitle: Constants.categoryList[index].title,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValueManager.vW10,
                      ),
                      itemCount: Constants.categoryList.length,
                    ),
                  ),
                  const SizedBox(height: HeightValueManager.vH27),
                  const Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      StringsValueManager.vHPTrending,
                      style: TextStyle(
                        fontFamily: FontFamilyManager.vFSF,
                        fontSize: FontSizeValueManager.vFS20,
                        fontWeight: FontWeightManager.vFBold,
                        color: ColorValueManager
                            .vWhiteColor, // 👈 لون أبيض عشان يبان على الخلفية
                      ),
                    ),
                  ),
                  SizedBox(
                    height: HeightValueManager.vH194_89,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTrendingCard(
                        imagePath: Constants.trendingList[index].image,
                        title: Constants.trendingList[index].title,
                        count: Constants.trendingList[index].count,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValueManager.vW10,
                      ),
                      itemCount: Constants.trendingList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
