import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_bottom_navigation_bar.dart';
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
      extendBody: true,
      extendBodyBehindAppBar: true,

      //* AppBar
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
            fontSize: FontSizeValueManager.vFS25_23,
            fontWeight: FontWeightManager.vFBold,
            color: ColorValueManager.vWhiteColor,
          ),
        ),
      ),

      //* Body
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
                vertical: PaddingValueManager.vP10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //* Category Section
                  SizedBox(
                    height: HeightValueManager.vH157_52,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomCategoriesCard(
                        imagePath: Constants.categoryList[index].image,
                        imageTitle: Constants.categoryList[index].title,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: WidthValueManager.vW10),
                      itemCount: Constants.categoryList.length,
                    ),
                  ),

                  const SizedBox(height: HeightValueManager.vH24),

                  //* Trending Section
                  const CustomSectionTitle(
                      title: StringsValueManager.vHPTrending),

                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        HeightValueManager.vHTrendingSection,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTrendingCard(
                        imagePath: Constants.trendingList[index].image,
                        title: Constants.trendingList[index].title,
                        count: Constants.trendingList[index].count,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: WidthValueManager.vW10),
                      itemCount: Constants.trendingList.length,
                    ),
                  ),

                  const SizedBox(height: HeightValueManager.vH24),

                  //* Top Seller Section
                  const CustomSectionTitle(
                      title: StringsValueManager.vHPTopSeller),

                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        HeightValueManager.vHTopSellerSection,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTopSellerCard(
                        title: Constants.topSellerList[index].title,
                        supTitle: Constants.topSellerList[index].subTitle,
                        imagePath: Constants.topSellerList[index].image,
                        count1: Constants.topSellerList[index].count1,
                        count2: Constants.topSellerList[index].count2,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: WidthValueManager.vW10),
                      itemCount: Constants.topSellerList.length,
                    ),
                  ),

                  const SizedBox(height: HeightValueManager.vH24),

                  //* Hot Items Section
                  const CustomSectionTitle(title: StringsValueManager.vHPHot),

                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        HeightValueManager.vHTopSellerSection,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomTopSellerCard(
                        title: Constants.hotItemsList[index].title,
                        supTitle: Constants.hotItemsList[index].subTitle,
                        imagePath: Constants.hotItemsList[index].image,
                        count1: Constants.hotItemsList[index].count1,
                        count2: Constants.hotItemsList[index].count2,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: WidthValueManager.vW10),
                      itemCount: Constants.hotItemsList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      //* Bottom Navigation Bar
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
