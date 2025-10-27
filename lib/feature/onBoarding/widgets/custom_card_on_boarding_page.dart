import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/resources/border_radius_manager.dart';
import '../../../core/resources/color_value_manager.dart';
import '../../../core/resources/fonts_value_manager.dart';
import '../../../core/resources/padding_margin_value_manager.dart';
import '../../../core/resources/route_manager.dart';
import '../../../core/resources/size_value_manager.dart';
import '../../../core/resources/strings_value_manager.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusManager.vBR35,
      child: BackdropFilter(
        // to make the box with a blur effect==================
        filter: ImageFilter.blur(
            sigmaX: BlurManager.vB10, sigmaY: BlurManager.vB10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
              vertical: PaddingValueManager.vP40,
              horizontal: PaddingValueManager.vP20),
          decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadiusManager.vBR35,
              border: Border.all(
                  color: ColorValueManager.vWhiteOpec_0_1, width: 1.5)),
          //* ===============================
          //* 🔹 Card Content
          //* ===============================
          child: Column(
            children: [
              //* -------------------------------
              //* 🟣 Subtitle & Description
              //* -------------------------------
              const SizedBox(
                child: Column(
                  children: [
                    //* sup title---------------------
                    Text(
                      StringsValueManager.vOnBoardingSupTitle,
                      style: TextStyle(
                          color: ColorValueManager.vWhiteColor,
                          fontSize: FontSizeValueManager.vFS25,
                          fontWeight: FontWeightManager.vFBold,
                          fontFamily: FontFamilyManager.vFSF),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: HeightValueManager.vH10,
                    ),
                    //* description-------------------
                    Text(
                      StringsValueManager.vOnBoardingDisc,
                      style: TextStyle(
                          color: ColorValueManager.vWhiteColor,
                          fontSize: FontSizeValueManager.vFS11_71,
                          fontWeight: FontWeightManager.vFW100,
                          fontFamily: FontFamilyManager.vFSF),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: HeightValueManager.vH15,
              ),
              //* -------------------------------
              //* 🟢 "Get Started" Button
              //* -------------------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorValueManager.vIndigoOpec_0_2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusManager.vBR35,
                    side: BorderSide(
                      color: ColorValueManager.vWhiteOpec_0_1,
                      width: WidthValueManager.vW1_5,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: PaddingValueManager.vP15,
                      horizontal: PaddingValueManager.vP40),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RouteNames.home);
                },
                child: const Text(
                  StringsValueManager.vGetStartedButton,
                  style: TextStyle(
                      color: ColorValueManager.vWhiteColor,
                      fontWeight: FontWeightManager.vFBold,
                      fontSize: FontSizeValueManager.vFS20,
                      fontFamily: FontFamilyManager.vFSF),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
