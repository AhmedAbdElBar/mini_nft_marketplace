import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/home/widgets/custom_categories_image.dart';

import '../../../core/constans/constants.dart';

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
      body: Center(
        child: Column(children: [
          SizedBox(
            height: HeightValueManager.vH157_52,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCategoriesImage(
                    imagePath: Constants.categoryList[index].image,
                    imageTitle: Constants.categoryList[index].title),
                separatorBuilder: (context, index) => const SizedBox(
                      width: WidthValueManager.vW10,
                    ),
                itemCount: Constants.categoryList.length),
          )
        ]),
      ),
    );
  }
}
