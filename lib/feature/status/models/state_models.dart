import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/feature/status/widgets/custom_activity_widget.dart';
import 'package:mini_nft_marketplace/feature/status/widgets/custom_ranking_widget.dart';

Widget buildContent(int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return const CustomRankingWidget();

    case 1:
      return const CustomActivityWidget();

    default:
      return const SizedBox.shrink();
  }
}
