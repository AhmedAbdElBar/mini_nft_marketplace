import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_categories_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValueManager.vBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorValueManager.vTransparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          StringsValueManager.vHomePageTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: FontFamilyManager.vFSF,
              fontSize: FontSizeValueManager.vF25_23,
              fontWeight: FontWeightManager.vFBold,
              color: ColorValueManager.vWhiteColor),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoriesImage(
                      imagePath: ImagesValueManager.vAMusicImage,
                      imageTitle: StringsValueManager.vHomePageCategoryMusic),
                  SizedBox(
                    width: WidthValueManager.vW10,
                  ),
                  CustomCategoriesImage(
                      imagePath: ImagesValueManager.vAArtImage,
                      imageTitle: StringsValueManager.vHomePageCategoryArt),
                  SizedBox(
                    width: WidthValueManager.vW10,
                  ),
                  CustomCategoriesImage(
                      imagePath: ImagesValueManager.vAVirtualWorldsImage,
                      imageTitle:
                          StringsValueManager.vHomePageCategoryVirtualWorlds),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
