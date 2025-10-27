import 'package:flutter/material.dart';

import '../../../core/resources/color_value_manager.dart';
import '../../../core/resources/fonts_value_manager.dart';
import '../../../core/resources/strings_value_manager.dart';

class CustomTitleOnBoradingPage extends StatelessWidget {
  const CustomTitleOnBoradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringsValueManager.vOnBoardingTitle,
      style: TextStyle(
          fontWeight: FontWeightManager.vFBold,
          fontSize: FontSizeValueManager.vFS40,
          color: ColorValueManager.vWhiteColor,
          fontFamily: FontFamilyManager.vFSF),
    );
  }
}
