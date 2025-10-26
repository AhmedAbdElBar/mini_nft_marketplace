import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/status/models/state_models.dart';
import 'package:mini_nft_marketplace/feature/status/widgets/custom_text_button.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValueManager.vBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorValueManager.vTransparent,
        automaticallyImplyLeading: false,
        title: const Text(
          StringsValueManager.vSTitle,
          style: TextStyle(
              color: ColorValueManager.vWhiteColor,
              fontFamily: FontFamilyManager.vFSF,
              fontWeight: FontWeightManager.vFBold,
              fontSize: FontSizeValueManager.vFS27),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: ColorValueManager.vWhiteColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButtonForStats(
                    title: StringsValueManager.vSRanking,
                    icon: Icons.stacked_bar_chart_rounded,
                    isSelected: selectedIndex == 0,
                    function: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    }),
                const SizedBox(
                  width: WidthValueManager.vW20,
                ),
                CustomTextButtonForStats(
                  title: StringsValueManager.vSActivity,
                  icon: Icons.trending_up_rounded,
                  function: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  isSelected: selectedIndex == 1,
                )
              ],
            ),
            const Divider(
              color: ColorValueManager.vIndigoShadow,
            ),
            buildContent(selectedIndex),
          ],
        ),
      ),
    );
  }
}
