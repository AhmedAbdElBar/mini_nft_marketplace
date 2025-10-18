import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_top_seller_card.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_categories_card.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_section_title.dart';
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
        //* background image for home screen
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesValueManager.vAHBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: PaddingValueManager.vP8,
                  vertical: PaddingValueManager.vP10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //* category section
                  SizedBox(
                    height: HeightValueManager.vH157_52,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
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
                  const SizedBox(height: 24),
                  //*trending section
                  /// trending title
                  const CustomSectionTitle(
                      title: StringsValueManager.vHPTrending),

                  ///trending cards
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.23,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
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
                  const SizedBox(height: 24),
                  //* top seller section
                  /// top seller title
                  const CustomSectionTitle(
                      title: StringsValueManager.vHPTopSeller),

                  /// top seller cards
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTopSellerCard(
                        title: Constants.topSellerList[index].title,
                        supTitle: Constants.topSellerList[index].subTitle,
                        imagePath: Constants.topSellerList[index].image,
                        count1: Constants.topSellerList[index].count1,
                        count2: Constants.topSellerList[index].count2,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValueManager.vW10,
                      ),
                      itemCount: Constants.topSellerList.length,
                    ),
                  ),
                  const SizedBox(height: 24),
                  //* Hot new items section
                  const CustomSectionTitle(title: StringsValueManager.vHPHot),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTopSellerCard(
                        title: Constants.hotItemsList[index].title,
                        supTitle: Constants.hotItemsList[index].subTitle,
                        imagePath: Constants.hotItemsList[index].image,
                        count1: Constants.hotItemsList[index].count1,
                        count2: Constants.hotItemsList[index].count2,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValueManager.vW10,
                      ),
                      itemCount: Constants.hotItemsList.length,
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
